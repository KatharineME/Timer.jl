module RunTime

using Dates: now, canonicalize, CompoundPeriod

macro runtime(args...)

    println("-"^80)

    st = now()

    println("Starting ", fu, " at ", st)

    println(args...)

    en = now()

    println("Ended at ", en)

    println("Took ", canonicalize(CompoundPeriod(en - st)))

    println()

end

end
