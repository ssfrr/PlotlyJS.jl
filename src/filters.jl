@require SIUnits begin
    """
    Go through the traces in the plot looking for arrays with units. If there
    are unitful traces, the data arrays are converted to raw values and unit labels
    are added to the axis ticks
    """
    function process_units!(p::Plot)
        units = Dict{Symbol, UTF8String}()
        # first initialize our units with whatever might already be in the layout
        scene = p.layout[:scene]
        for scenekey in (:xaxis, :yaxis, :zaxis)
            if scenekey in keys(scene) && :ticksuffix in keys(scene[scenekey])
                units[scenekey] = scene[scenekey][:ticksuffix]
            end
        end
        for trace in p.data
            for (tracekey, scenekey) in ((:x, :xaxis), (:y, :yaxis), (:z, :zaxis))
                if tracekey in keys(trace.fields) && eltype(trace.fields[tracekey]) <: SIUnits.SIQuantity
                    arr, suffix = stripunits(trace.fields[tracekey])
                    if scenekey in keys(units) && units[scenekey] != suffix
                        error("Only one unit allowed on each axis")
                    end
                    trace[tracekey] = arr
                    units[scenekey] = suffix
                end
            end
        end
        for (k, v) in units
            p.layout["$k.ticksuffix"] = v
        end
    end

    """
    Strip the units from the given array, and return the stripped array and a
    string representation of the unit.
    """
    function stripunits{T,m,kg,s,A,K,mol,cd,rad,sr}(arr::AbstractArray{SIUnits.SIQuantity{T,m,kg,s,A,K,mol,cd,rad,sr}})
        Float64[float(x) for x in arr], string(SIUnits.SIUnit{m,kg,s,A,K,mol,cd,rad,sr}())
    end
    # overload suffix for Hz
    function stripunits{T}(arr::AbstractArray{SIUnits.SIQuantity{T,0,0,-1,0,0,0,0,0,0}})
        Float64[float(x) for x in arr], "Hz"
    end
end
