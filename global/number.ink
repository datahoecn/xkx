//壹、贰、叁、肆、伍、陆、柒、捌、玖、拾、佰、仟、万、亿、元、角、分、零、整

== function print_money(x) 
{
    - x >= 1000:
        {print_num(x / 1000)}两银子 { x mod 1000 > 0:{print_num(x mod 1000)}}{ x mod 1000 != 0:文铜钱}
    - x >= 100:
        {print_num(x / 100)}佰{ x mod 100 > 0:{print_num(x mod 100)}}文铜钱
    - x == 0:
        零文铜钱
    - else:
        { x >= 20:
            { x / 10:
                - 2: 贰拾
                - 3: 叁拾
                - 4: 肆拾
                - 5: 伍拾
                - 6: 陆拾
                - 7: 柒拾
                - 8: 捌拾
                - 9: 玖拾
            }
            { x mod 10 > 0:
                <><>
            }
        }

        { x < 10 || x > 20:
            { x mod 10:
                - 1: 壹
                - 2: 贰
                - 3: 叁
                - 4: 肆
                - 5: 伍
                - 6: 陆
                - 7: 柒
                - 8: 捌
                - 9: 玖
            }
        - else:
            { x:
                - 10: 拾
                - 11: 拾壹
                - 12: 拾贰
                - 13: 拾叁
                - 14: 拾肆
                - 15: 拾伍
                - 16: 拾陆
                - 17: 拾柒
                - 18: 拾捌
                - 19: 拾玖
            }
        }<>文铜钱
}   

== function print_num(x) 
{
    - x >= 1000:
        {print_num(x / 1000)}仟{ x mod 1000 > 0:{print_num(x mod 1000)}}
    - x >= 100:
        {print_num(x / 100)}佰{ x mod 100 > 0:{print_num(x mod 100)}}
    - x == 0:
        零
    - else:
        { x >= 20:
            { x / 10:
                - 2: 贰拾
                - 3: 壹拾
                - 4: 肆拾
                - 5: 伍拾
                - 6: 陆拾
                - 7: 柒拾
                - 8: 捌拾
                - 9: 玖拾
            }
            { x mod 10 > 0:
                <><>
            }
        }

        { x < 10 || x > 20:
            { x mod 10:
                - 1: 壹
                - 2: 贰
                - 3: 叁
                - 4: 肆
                - 5: 伍
                - 6: 陆
                - 7: 柒
                - 8: 捌
                - 9: 玖
            }
        - else:
            { x:
                - 10: 拾
                - 11: 拾壹
                - 12: 拾贰
                - 13: 拾叁
                - 14: 拾肆
                - 15: 拾伍
                - 16: 拾陆
                - 17: 拾柒
                - 18: 拾捌
                - 19: 拾玖
            }
        }
}   
