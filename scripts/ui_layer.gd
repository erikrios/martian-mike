class_name UILayer extends CanvasLayer

@onready var win_screen: Control = $WinScreen

func show_win_screen(flag: bool) -> void:
	win_screen.visible = flag
