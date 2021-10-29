module RunTime

using Dates: now, CompoundPeriod

macro runtime(fu)

    println("-"^80)

    st = now()

    println("Starting ", fu, " at ", st)

    fu 

    en = now()

    println("Ended at ", en)

    println("Took ", canonicalize(CompoundPeriod(en - st)))

    println()

end

end
