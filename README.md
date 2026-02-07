## Dataset 1

* Hypothesis
  * Null hypothesis (H0): The mean number of seeds are equal between all sites 
  * Alternative hypothesis (H1): At least one site significantly varies in mean number of seeds
* Normality? Yes
  * ![1a789c79-7c66-45d9-993d-7bc9a3eaa856](F:\R\2026JanExperimentalDesign\1a789c79-7c66-45d9-993d-7bc9a3eaa856.png)
  * ![5b40ac02-9090-427c-b508-0b95ea0053a7](F:\R\2026JanExperimentalDesign\5b40ac02-9090-427c-b508-0b95ea0053a7.png)
* Summary Stats
  *    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      1.690   3.894   4.378   4.311   4.829   6.211 
* ANOVA
  * Df Sum Sq Mean Sq F value Pr(>F)
    site         5  6.686  1.3373   1.958  0.103
    Residuals   46 31.411  0.6828             
  * H0 accepted

## Dataset 2

* Hypothesis
  * Null hypothesis (H0): The mean beak lengths are equal between all groups)
  * Alternative hypothesis (H1): At least one group significantly differs in mean beak lengths.
* Normality? Yes
  * ![d1c827eb-42f4-41f0-97c0-9e1b00d4c526](F:\R\2026JanExperimentalDesign\d1c827eb-42f4-41f0-97c0-9e1b00d4c526.png)
  * ![0c90af45-cb8f-4732-a876-2899847b4714](F:\R\2026JanExperimentalDesign\0c90af45-cb8f-4732-a876-2899847b4714.png)
* Summary Stats
  * Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
      3.800   5.000   5.200   5.271   5.500   6.600 
* ANOVA
  *  Df Sum Sq Mean Sq F value Pr(>F)
    Group        4  0.847  0.2119   0.722  0.581
    Residuals   46 13.498  0.2934 
  * H0 accepted

## Dataset 3

* Hypothesis
  * Null hypothesis (H0): The mean number of tota lung parasites are equal between all mouse strains
  * Alternative hypothesis (H1): At least one mouse strain significantly differs in mean number of lung parasites
* Normality? Yes
  * ![cea1957a-c0e2-418e-9889-5e627f79b650](F:\R\2026JanExperimentalDesign\cea1957a-c0e2-418e-9889-5e627f79b650.png)
  * ![d5dbfc71-e76b-4fb2-a38a-4be4d6f406a3](F:\R\2026JanExperimentalDesign\d5dbfc71-e76b-4fb2-a38a-4be4d6f406a3.png)
* Summary Stats
  *  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
       0.00   16.00   28.00   30.74   40.00   84.00 
* ANOVA
  * Df Sum Sq Mean Sq F value   Pr(>F)    
    Strain       8  11143  1392.9   6.765 2.73e-05 ***
    Residuals   34   7001   205.9   
  * H0 rejected
    * Tukey multiple comparisons of means
          (highlight = significant difference, cutoff = 95% family-wise confidence level)
                       diff        lwr        upr     p adj
      BALB/c-A/J        9.6 -20.429745  39.629745 0.9764691
      C3H/HeN-A/J      -0.8 -30.829745  29.229745 1.0000000
      ==C57Bl/6-A/J      45.2  15.170255  75.229745 0.0005545==
      CBA/Ca-A/J       -0.8 -30.829745  29.229745 1.0000000
      DBA/2-A/J        -8.8 -38.829745  21.229745 0.9862607
      NIH-A/J          22.4  -7.629745  52.429745 0.2823402
      SJL-A/J          21.2 -10.651354  53.051354 0.4267620
      SWR-A/J           2.2 -29.651354  34.051354 0.9999997
      C3H/HeN-BALB/c  -10.4 -40.429745  19.629745 0.9622623
      ==C57Bl/6-BALB/c   35.6   5.570255  65.629745 0.0106561==
      CBA/Ca-BALB/c   -10.4 -40.429745  19.629745 0.9622623
      DBA/2-BALB/c    -18.4 -48.429745  11.629745 0.5360744
      NIH-BALB/c       12.8 -17.229745  42.829745 0.8860350
      SJL-BALB/c       11.6 -20.251354  43.451354 0.9498384
      SWR-BALB/c       -7.4 -39.251354  24.451354 0.9970498
      C57Bl/6-C3H/HeN  46.0  15.970255  76.029745 0.0004294
      CBA/Ca-C3H/HeN    0.0 -30.029745  30.029745 1.0000000
      DBA/2-C3H/HeN    -8.0 -38.029745  22.029745 0.9925732
      NIH-C3H/HeN      23.2  -6.829745  53.229745 0.2422041
      SJL-C3H/HeN      22.0  -9.851354  53.851354 0.3781838
      SWR-C3H/HeN       3.0 -28.851354  34.851354 0.9999965
      ==CBA/Ca-C57Bl/6  -46.0 -76.029745 -15.970255 0.0004294==
      ==DBA/2-C57Bl/6   -54.0 -84.029745 -23.970255 0.0000324==
      NIH-C57Bl/6     -22.8 -52.829745   7.229745 0.2617553
      SJL-C57Bl/6     -24.0 -55.851354   7.851354 0.2705107
      ==SWR-C57Bl/6     -43.0 -74.851354 -11.148646 0.0024020==
      DBA/2-CBA/Ca     -8.0 -38.029745  22.029745 0.9925732
      NIH-CBA/Ca       23.2  -6.829745  53.229745 0.2422041
      SJL-CBA/Ca       22.0  -9.851354  53.851354 0.3781838
      SWR-CBA/Ca        3.0 -28.851354  34.851354 0.9999965
      ==NIH-DBA/2        31.2   1.170255  61.229745 0.0366938==
      SJL-DBA/2        30.0  -1.851354  61.851354 0.0778676
      SWR-DBA/2        11.0 -20.851354  42.851354 0.9628665
      SJL-NIH          -1.2 -33.051354  30.651354 1.0000000
      SWR-NIH         -20.2 -52.051354  11.651354 0.4908115
      SWR-SJL         -19.0 -52.574276  14.574276 0.6359198