test -e ~/.envrc && source ~/.envrc

source ~/.colors

PS1="\\[$Yellow\\]\$?\\[$Color_Off\\] \\[$Red\\]\\u\\[$Green\\]@\\[$Red\\]\\h\\[$Color_Off\\] \\[$Green\\]\\w\\[$Color_Off\\] \\[$Red\\]❯\\[$Yellow\\]❯\\[$Green\\]❯\\[$Color_Off\\] "
export PS1

test -e ~/.aliases && source ~/.aliases
