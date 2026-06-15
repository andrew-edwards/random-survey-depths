# Nacho's random picks for the World Cup pool

set.seed(48)   # Number of times Nacho barked during my meeting

n = 48         # Number of games in first round

res <- rmultinom(n,
                 size = 1,
                 prob = c(0.35,0.3,0.35))   # Prob of team 1 win, draw, team 2 win

print(res)

# Round of 16. 16 games as each team gets eliminated once except the winner,
#  plus there's the 3rd/4th playoff.

res_16 <- rmultinom(16,
                    size = 1,
                    prob = c(0.50, 0.50))   # Prob of team 1 win, team 2 win

print(res_16)


# Euros 2024. Same idea, let's change the probs. Need to do round of 16 also.

set.seed(21)   # Number of times Nacho barked during a five minute period when
               # his dog friend in the house behind ours was over in his yard

n = 36         # Number of games in first round

prob_draw = 8/36   # 0.22222. 8/36 games were draws in Euro
                   # 2020 group stage, so let's go with that. Close to what I
                   # was thinking anyway of 20%
prob_win = (1 - prob_draw)/2

prob_draw
prob_win

res <- rmultinom(n,
                 size = 1,
                 prob = c(0.4,0.2,0.35))   # Prob of team 1 win, draw, team 2
                                        # win.
print(res)

# Round of 16. 16 games as each team gets eliminated once except the winner,
#  plus there's the 3rd/4th playoff.

res_16 <- rmultinom(16,
                    size = 1,
                    prob = c(0.50, 0.50))   # Prob of team 1 win, team 2 win

print(res_16)


# World Cup 2026 picks. Barked 14 times outside this morning, hence:
set.seed(14)

n = 72         # Number of games in first round

res_wc_2026 <- rmultinom(n,
                 size = 1,
                 prob = c(0.35,0.30,0.35))   # Prob of team 1 win, draw, team 2 win

print(res_wc_2026) %>% t()

# Round of 32. 32 games as each team gets eliminated once except the winner,
#  plus there's the 3rd/4th playoff.

res_wc_2026_knockout <- rmultinom(32,
                                  size = 1,
                                  prob = c(0.50, 0.50))   # Prob of team 1 win, team 2 win

print(res_wc_2026_knockout) %>% t()
