#NAME    "Test target (Ru-Ru)"
#INDEX_LANGUAGE    "Russian"
#CONTENTS_LANGUAGE    "Russian"

test ref target
    [m1][i]ref обыкновенный:[/i] [ref]заголовок[/ref][/m]
    [m1][i]ref target="заголовок":[/i] [ref target="заголовок"]заголовок[/ref][/m]
    [m1][i]ref target="заголовок":[/i] [ref target="заголовок"]любой текст[/ref][/m]
    [m1][i]ref target="ЗАГОЛОВОК":[/i] [ref target="ЗАГОЛОВОК"]ЗАГОЛОВОК[/ref][/m]
    [m1][i]ref target="ЗАГОЛОВОК":[/i] [ref target="ЗАГОЛОВОК"]заголовок[/ref][/m]
    [m1][i]ref target="заголовок с пробелами":[/i] [ref target="заголовок с пробелами"]заголовок с пробелами[/ref][/m]
    [m1][i]ref target="заголовок с пробелами":[/i] [ref target="заголовок с пробелами"]любой текст[/ref][/m]
    [m1][i]ref target="заголовок (с экранированными скобками)":[/i] [ref target="заголовок (с экранированными скобками)"]заголовок (с экранированными скобками)[/ref][/m]
    [m1][i]ref target="заголовок (с экранированными скобками)":[/i] [ref target="заголовок (с экранированными скобками)"]любой текст[/ref][/m]
    [m1][i]ref target="заголовок со":[/i] [ref target="заголовок со"]заголовок со (скобками)[/ref][/m]
    [m1][i]ref target="заголовок со скобками":[/i] [ref target="заголовок со скобками"]заголовок со (скобками)[/ref][/m]
    [m1][i]ref target="заголовок со скобками":[/i] [ref target="заголовок со скобками"]любой текст[/ref][/m]
    [m1][i]ref target="заголовок в кавычках":[/i] [ref target="заголовок в кавычках"]{«}заголовок в кавычках{»}[/ref][/m]
    [m1][i]ref target="заголовок в кавычках":[/i] [ref target="заголовок в кавычках"]любой текст[/ref][/m]
test url target
    [m1][i]url обыкновенный:[/i] [url]www.yandex.ru[/url][/m]
    [m1][i]url target="www.yandex.ru":[/i] [url target="www.yandex.ru"]yaru[/url][/m]
    [m1][i]url target="https://forum.ru-board.com/topic.cgi?forum=93&topic=3981&start=4920\#21":[/i] [url target="https://forum.ru-board.com/topic.cgi?forum=93&topic=3981&start=4920\#21"]обсуждение url target[/url][/m]
test color
	[m1]test [c blueviolet]blueviolet[/c], [c]default color[/c], [c red]red[/c], [c "blue"]quoted blue[/c]