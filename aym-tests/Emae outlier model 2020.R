# Emae outlier model 2020

my_oxcal_code <- ' Plot()
{
  Outlier_model("General",T(5),U(0,4),"t");
  Phase("Emae")
  {
    Sequence("Emae")
    {
      Boundary("Start Emae");
      Phase("Phase 1")
      {
        Curve("Marine20","marine20.14c");
        Delta_R("LocalMarine",-291,39);
        R_Date("Wk-48778S", 2965, 19)
        {
          Outlier("General", 0.05);
        };
        Curve("SHCal20","shcal20.14c");
        R_Date("Wk-48772N", 2457, 17)
        {
          Outlier("General", 0.05);
        };
        R_Date("Wk-48771N", 2456, 18)
        {
          Outlier("General", 0.05);
        };
        Curve("Marine20","marine20.14c");
        Delta_R("LocalMarine",-291,39);
        R_Date("Wk-50507S", 2544, 22)
        {
          Outlier("General", 0.05);
        };
        R_Date("Wk-50512S", 2531, 22)
        {
          Outlier("General", 0.05);
        };
      };
      Boundary("Slopewash");
      Phase("Phase 2")
      {
        Curve("Marine20","marine20.14c");
        Delta_R("LocalMarine",-153,54);
        R_Date("Wk-50514S", 1795, 22)
        {
          Outlier("General", 0.05);
        };
        Curve("SHCal20","shcal20.14c");
        R_Date("Wk-48768N", 645, 19)
        {
          Outlier("General", 0.05);
        };
        Curve("Marine20","marine20.14c");
        Delta_R("LocalMarine",-348,89);
        R_Date("Wk-50513S", 1009, 22)
        {
          Outlier("General", 0.05);
        };
        R_Date("Wk-50506S", 965, 22)
        {
          Outlier("General", 0.05);
        };
        R_Date("Wk-50509S", 880, 22)
        {
          Outlier("General", 0.05);
        };
      };
      Boundary("Kuwae horizon 1");
      Phase("Phase 3")
      {
        Curve("Marine20","marine20.14c");
        Delta_R("LocalMarine",-153,54);
        R_Date("Wk-50511S", 1010, 23)
        {
          Outlier("General", 0.05);
        };
        R_Date("Wk-48776S", 995, 20)
        {
          Outlier("General", 0.05);
        };
      };
      Boundary("Kuwae horizon 2");
      Phase("Phase 4")
      {
        Sequence("Finongi")
        {
          Boundary("Start Finongi");
          Phase("Finongi")
          {
            Curve("Marine20","marine20.14c");
            Delta_R("LocalMarine",-153,54);
            R_Date("Wk-50510S", 489, 22)
            {
              Outlier("General", 0.05);
            };
            Curve("SHCal20","shcal20.14c");
            R_Date("Wk-50508N", 346, 26)
            {
              Outlier("General", 0.05);
            };
          };
          Boundary("End Finongi");
        };
        Sequence("Tongamea")
        {
          Boundary("Start Tongamea");
          Phase("L5-2")
          {
            Curve("Marine20","marine20.14c");
            Delta_R("LocalMarine",-153,54);
            R_Date("Wk-48777S", 940, 21)
            {
              Outlier("General", 0.05);
            };
          };
          Boundary("5-2/5-1");
          Phase("L5-1")
          {
            Curve("SHCal20","shcal20.14c");
            R_Date("Wk-48770N", 366, 17)
            {
              Outlier("General", 0.05);
            };
          };
          Boundary("5-1/4-3");
          Phase("L4-3")
          {
            Curve("SHCal20","shcal20.14c");
            R_Date("Wk-48769N", 333, 18)
            {
              Outlier("General", 0.05);
            };
          };
          Boundary("4-3/4-2");
          Phase("L4-2")
          {
            Curve("Marine20","marine20.14c");
            Delta_R("LocalMarine",-153,54);
            R_Date("Wk-48775S", 707, 18)
            {
              Outlier("General", 0.05);
            };
          };
          Boundary("4-2/2-3");
          Phase("L2-3")
          {
            Curve("Marine20","marine20.14c");
            Delta_R("LocalMarine",-153,54);
            R_Date("Wk-48774S", 712, 18)
            {
              Outlier("General", 0.05);
            };
          };
          Boundary("2-3/1-2");
          Phase("L1-2")
          {
            Curve("Marine20","marine20.14c");
            Delta_R("LocalMarine",-153,54);
            R_Date("Wk-48773S", 608, 19)
            {
              Outlier("General", 0.05);
            };
          };
          Boundary("End Tongamea");
        };
      };
      Boundary("End Emae");
    };
  };
};'
