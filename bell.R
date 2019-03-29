library(tidyverse)
# Bell inequality
n <- 100
p <- runif(3)
p
df1 <- data.frame(sex    = rbinom(n,size=1,prob = p[1]),
                  age    = rbinom(n,size=1,prob = p[2]),
                  height = rbinom(n,size=1,prob = p[3]))


df2 <- df1 %>% 
  group_by(sex,age,height) %>% 
  summarise(n = n()) %>% 
  ungroup %>% 
  mutate(p = round(n/sum(n),2),
         np = letters[1:8],
         G1 = sex==age,
         G2 = age==height,
         G3 = sex==height)

df2
# Chaque interrogateur peut poser, au hasard, une seule question (sex,age,height)
# G1 = P(R1A = R2B) =
G1 <- df2$p[df2$G1]
G2 <- df2$p[df2$G2]
G3 <- df2$p[df2$G3]

G1 = ab    gh
G2 = a  de  h
G3 = a c  f h

S = a+b+d+e+g+h -c-f
  = 1 - 2*c -2*f

sum(G1,G2,-G3)

# S must necessarily always be < 1

En 1981-82, Alain Aspect (Paris) fait une expérience dans laquelle les inégalités de Bell sont violées. 
Ceci confirme le formalisme quantique et sonne le glas du réalisme local.

Comme l’inégalité de Bell est violée dans le cas des photons intriqués, il faut renoncer à expliquer 
l’expérience par des variables cachées locales. Autrement dit, les deux photons ne possèdent pas 
un état fixe qui déterminerait les réponses aux 3 questions A, B et C indépendamment des 2 questions posées. 
Il est impossible de considérer l’expérience des 2 photons comme semblable à celle des clones.

Mais une théorie à variables cachées globales est toujours permise. C’est le cas dans la théorie de de Broglie – Bohm.
