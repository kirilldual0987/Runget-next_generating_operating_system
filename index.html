#!/bin/bash

# ╔═══════════════════════════════════════════════════════════════════╗
# ║  Beautifulconfig v2.1 for Runget (KDE Plasma Support)             ║
# ║  Created by kirilldual0987 © 2025                                 ║
# ╚═══════════════════════════════════════════════════════════════════╝

VERSION="2.1"
AUTHOR="kirilldual0987"
YEAR="2025"

# URL обоев с Google Drive
WALLPAPER_URL="https://drive.usercontent.google.com/u/0/uc?id=1DMUeoRB3fMxzBVo33jyiKJCCctfCTPXb&export=download"
WALLPAPER_DIR="$HOME/.local/share/wallpapers/Beautifulconfig"
WALLPAPER_FILE="$WALLPAPER_DIR/wallpaper.jpg"

# Лог файл
LOG_FILE="/tmp/beautifulconfig_$(date +%Y%m%d_%H%M%S).log"

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ЦВЕТА И СТИЛИ
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
GRAY='\033[0;90m'
BOLD='\033[1m'
ITALIC='\033[3m'
NC='\033[0m'

DONE="✅"
FAIL="❌"
WARN="⚠️"
INFO="ℹ️"
ARROW="➤"
GEAR="⚙"
DOWNLOAD="⬇"
ROCKET="🚀"
STAR="★"

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ФУНКЦИИ ИНТЕРФЕЙСА
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

clear_screen() {
    clear
    printf '\033[3J'
}

show_banner() {
    clear_screen
    echo -e "${CYAN}${BOLD}"
    cat << 'EOF'
    
    ╔═══════════════════════════════════════════════════════════════════╗
    ║                                                                   ║
    ║   ██████╗ ███████╗ █████╗ ██╗   ██╗████████╗██╗███████╗██╗   ██╗  ║
    ║   ██╔══██╗██╔════╝██╔══██╗██║   ██║╚══██╔══╝██║██╔════╝██║   ██║  ║
    ║   ██████╔╝█████╗  ███████║██║   ██║   ██║   ██║█████╗  ██║   ██║  ║
    ║   ██╔══██╗██╔══╝  ██╔══██║██║   ██║   ██║   ██║██╔══╝  ╚██╗ ██╔╝  ║
    ║   ██████╔╝███████╗██║  ██║╚██████╔╝   ██║   ██║██║      ╚████╔╝   ║
    ║   ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝╚═╝       ╚═══╝    ║
    ║                                                                   ║
    ║              ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗        ║
    ║             ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝        ║
    ║             ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗       ║
    ║             ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║       ║
    ║             ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝       ║
    ║              ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝        ║
    ║                                                                   ║
    ╚═══════════════════════════════════════════════════════════════════╝
    
EOF
    echo -e "${NC}"
    echo -e "${PURPLE}${BOLD}                   Version ${VERSION} | Created by ${AUTHOR} © ${YEAR}${NC}"
    echo -e "${GRAY}                         Designed for Runget Linux (KDE Plasma)${NC}"
    echo ""
    sleep 1
}

animated_line() {
    local width=65
    echo -ne "${CYAN}"
    for ((i=0; i<width; i++)); do
        echo -n "━"
        sleep 0.01
    done
    echo -e "${NC}"
}

terminal_progress_bar() {
    local current=$1
    local total=$2
    local task_name="$3"
    local width=50
    local percentage=$((current * 100 / total))
    local filled=$((width * current / total))
    local empty=$((width - filled))
    
    local color=$RED
    if [ $percentage -ge 75 ]; then
        color=$GREEN
    elif [ $percentage -ge 50 ]; then
        color=$YELLOW
    elif [ $percentage -ge 25 ]; then
        color=$CYAN
    fi
    
    printf "\r    ${WHITE}${BOLD}[${NC}"
    printf "${color}"
    for ((i=0; i<filled; i++)); do printf "█"; done
    printf "${GRAY}"
    for ((i=0; i<empty; i++)); do printf "░"; done
    printf "${NC}${WHITE}${BOLD}]${NC}"
    printf " ${color}${BOLD}%3d%%${NC}" $percentage
    printf " ${GRAY}│${NC} ${WHITE}${task_name}${NC}"
    printf "%-20s" ""
}

print_status() {
    local type=$1
    local message="$2"
    
    case $type in
        "info")
            echo -e "    ${BLUE}${INFO}${NC}  ${WHITE}${message}${NC}"
            ;;
        "success")
            echo -e "    ${GREEN}${DONE}${NC} ${GREEN}${message}${NC}"
            ;;
        "error")
            echo -e "    ${RED}${FAIL}${NC} ${RED}${message}${NC}"
            ;;
        "warning")
            echo -e "    ${YELLOW}${WARN}${NC}  ${YELLOW}${message}${NC}"
            ;;
        "task")
            echo -e "    ${PURPLE}${ARROW}${NC}  ${BOLD}${message}${NC}"
            ;;
        "command")
            echo -e "       ${GRAY}└─ Command: ${ITALIC}${message}${NC}"
            ;;
    esac
}

section_divider() {
    local title="$1"
    echo ""
    echo -e "${CYAN}    ┌──────────────────────────────────────────────────────────────┐${NC}"
    echo -e "${CYAN}    │${NC} ${BOLD}${WHITE}${GEAR} ${title}${NC}"
    echo -e "${CYAN}    └──────────────────────────────────────────────────────────────┘${NC}"
    echo ""
}

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ОПРЕДЕЛЕНИЕ ОКРУЖЕНИЯ РАБОЧЕГО СТОЛА
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

detect_desktop_environment() {
    if [ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$DESKTOP_SESSION" = "plasma" ] || pgrep -x "plasmashell" > /dev/null; then
        echo "kde"
    elif [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || pgrep -x "gnome-shell" > /dev/null; then
        echo "gnome"
    elif [ "$XDG_CURRENT_DESKTOP" = "XFCE" ]; then
        echo "xfce"
    elif [ "$XDG_CURRENT_DESKTOP" = "MATE" ]; then
        echo "mate"
    elif [ "$XDG_CURRENT_DESKTOP" = "Cinnamon" ]; then
        echo "cinnamon"
    else
        echo "unknown"
    fi
}

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# УСТАНОВКА ОБОЕВ ДЛЯ KDE PLASMA
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

set_wallpaper_kde() {
    local wallpaper_path="$1"
    
    print_status "task" "Применение обоев для KDE Plasma..."
    
    # Метод 1: plasma-apply-wallpaperimage (Plasma 5.18+)
    if command -v plasma-apply-wallpaperimage &> /dev/null; then
        print_status "info" "Используем plasma-apply-wallpaperimage..."
        plasma-apply-wallpaperimage "$wallpaper_path" 2>> "$LOG_FILE"
        if [ $? -eq 0 ]; then
            print_status "success" "Обои установлены через plasma-apply-wallpaperimage!"
            return 0
        fi
    fi
    
    # Метод 2: через qdbus
    if command -v qdbus &> /dev/null; then
        print_status "info" "Используем qdbus..."
        
        qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
            var allDesktops = desktops();
            for (var i = 0; i < allDesktops.length; i++) {
                var d = allDesktops[i];
                d.wallpaperPlugin = 'org.kde.image';
                d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General');
                d.writeConfig('Image', 'file://${wallpaper_path}');
            }
        " 2>> "$LOG_FILE"
        
        if [ $? -eq 0 ]; then
            print_status "success" "Обои установлены через qdbus!"
            return 0
        fi
    fi
    
    # Метод 3: через dbus-send
    if command -v dbus-send &> /dev/null; then
        print_status "info" "Используем dbus-send..."
        
        dbus-send --session --dest=org.kde.plasmashell --type=method_call \
            /PlasmaShell org.kde.PlasmaShell.evaluateScript string:"
            var allDesktops = desktops();
            for (var i = 0; i < allDesktops.length; i++) {
                var d = allDesktops[i];
                d.wallpaperPlugin = 'org.kde.image';
                d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General');
                d.writeConfig('Image', 'file://${wallpaper_path}');
            }
        " 2>> "$LOG_FILE"
        
        if [ $? -eq 0 ]; then
            print_status "success" "Обои установлены через dbus-send!"
            return 0
        fi
    fi
    
    # Метод 4: Прямое редактирование конфига (fallback)
    print_status "warning" "Пробуем прямое редактирование конфига..."
    
    local plasma_config="$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc"
    
    if [ -f "$plasma_config" ]; then
        # Бэкап
        cp "$plasma_config" "${plasma_config}.backup"
        
        # Заменяем путь к обоям
        sed -i "s|Image=.*|Image=file://${wallpaper_path}|g" "$plasma_config"
        
        # Перезапускаем plasmashell
        print_status "info" "Перезапуск plasmashell..."
        kquitapp5 plasmashell 2>> "$LOG_FILE" && kstart5 plasmashell 2>> "$LOG_FILE" &
        
        sleep 3
        print_status "success" "Обои установлены через редактирование конфига!"
        return 0
    fi
    
    print_status "error" "Не удалось установить обои автоматически"
    print_status "info" "Обои сохранены: $wallpaper_path"
    print_status "info" "Установите вручную: ПКМ на рабочем столе → Настроить рабочий стол"
    return 1
}

set_wallpaper_gnome() {
    local wallpaper_path="$1"
    
    print_status "task" "Применение обоев для GNOME..."
    
    gsettings set org.gnome.desktop.background picture-uri "file://$wallpaper_path" 2>> "$LOG_FILE"
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$wallpaper_path" 2>> "$LOG_FILE"
    gsettings set org.gnome.desktop.background picture-options "zoom" 2>> "$LOG_FILE"
    
    print_status "success" "Обои установлены для GNOME!"
    return 0
}

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ОСНОВНЫЕ ФУНКЦИИ
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

check_dependencies() {
    section_divider "ПРОВЕРКА ЗАВИСИМОСТЕЙ"
    
    local deps=("curl" "wget")
    local missing=()
    
    # Добавляем kdialog для KDE или zenity для других
    local de=$(detect_desktop_environment)
    if [ "$de" = "kde" ]; then
        deps+=("kdialog")
    else
        deps+=("zenity")
    fi
    
    for dep in "${deps[@]}"; do
        if command -v $dep &> /dev/null; then
            print_status "success" "$dep установлен"
        else
            print_status "warning" "$dep не найден - будет установлен"
            missing+=("$dep")
        fi
    done
    
    if [ ${#missing[@]} -gt 0 ]; then
        echo ""
        print_status "info" "Установка недостающих зависимостей..."
        sudo apt install -y "${missing[@]}" &>> "$LOG_FILE"
        print_status "success" "Зависимости установлены"
    fi
    
    echo ""
}

check_system() {
    section_divider "ИНФОРМАЦИЯ О СИСТЕМЕ"
    
    # Определяем DE
    local de=$(detect_desktop_environment)
    
    case $de in
        "kde")
            print_status "info" "Desktop: KDE Plasma"
            if command -v plasmashell &> /dev/null; then
                local plasma_ver=$(plasmashell --version 2>/dev/null | head -1)
                print_status "info" "Plasma: ${plasma_ver}"
            fi
            ;;
        "gnome")
            print_status "info" "Desktop: GNOME"
            if command -v gnome-shell &> /dev/null; then
                local gnome_ver=$(gnome-shell --version 2>/dev/null)
                print_status "info" "${gnome_ver}"
            fi
            ;;
        *)
            print_status "warning" "Desktop: ${de} (может не поддерживаться полностью)"
            ;;
    esac
    
    print_status "info" "Kernel: $(uname -r)"
    
    if [ -f /etc/os-release ]; then
        source /etc/os-release
        print_status "info" "OS: ${PRETTY_NAME}"
    fi
    
    echo ""
    sleep 1
}

download_and_set_wallpaper() {
    section_divider "УСТАНОВКА ОБОЕВ"
    
    local de=$(detect_desktop_environment)
    print_status "info" "Обнаружено окружение: ${de^^}"
    
    print_status "task" "Загрузка обоев с Google Drive..."
    print_status "command" "curl -L \"$WALLPAPER_URL\" -o \"$WALLPAPER_FILE\""
    
    # Создаём директорию
    mkdir -p "$WALLPAPER_DIR"
    
    echo ""
    
    # Загружаем обои с прогресс-баром
    curl -L "$WALLPAPER_URL" -o "$WALLPAPER_FILE" \
        --progress-bar \
        --connect-timeout 30 \
        --max-time 120 2>&1 | \
        while IFS= read -r line; do
            echo -ne "\r    ${CYAN}${DOWNLOAD}${NC} Загрузка... $line"
        done
    
    echo ""
    echo ""
    
    # Проверяем успешность загрузки
    if [ -f "$WALLPAPER_FILE" ] && [ -s "$WALLPAPER_FILE" ]; then
        local filesize=$(du -h "$WALLPAPER_FILE" | cut -f1)
        print_status "success" "Обои загружены: $WALLPAPER_FILE ($filesize)"
        
        # Устанавливаем обои в зависимости от DE
        case $de in
            "kde")
                set_wallpaper_kde "$WALLPAPER_FILE"
                ;;
            "gnome")
                set_wallpaper_gnome "$WALLPAPER_FILE"
                ;;
            *)
                print_status "warning" "Автоустановка обоев не поддерживается для $de"
                print_status "info" "Обои сохранены: $WALLPAPER_FILE"
                print_status "info" "Установите их вручную через настройки рабочего стола"
                ;;
        esac
    else
        print_status "error" "Ошибка загрузки обоев!"
        return 1
    fi
    
    echo ""
    sleep 1
}

execute_command() {
    local step_num=$1
    local total_steps=$2
    local description="$3"
    local command="$4"
    local auto_input="$5"
    
    echo ""
    echo -e "${CYAN}    ╭─────────────────────────────────────────────────────────────╮${NC}"
    echo -e "${CYAN}    │${NC} ${BOLD}${WHITE}STEP ${step_num}/${total_steps}${NC} ${GRAY}│${NC} ${YELLOW}${description}${NC}"
    echo -e "${CYAN}    ╰─────────────────────────────────────────────────────────────╯${NC}"
    
    print_status "command" "$command"
    echo ""
    
    echo -e "    ${GRAY}────────────────────── OUTPUT ──────────────────────${NC}"
    echo ""
    
    if [ -n "$auto_input" ]; then
        echo "$auto_input" | eval "$command" 2>&1 | while IFS= read -r line; do
            echo -e "    ${GRAY}│${NC} $line"
        done
    else
        eval "$command" 2>&1 | while IFS= read -r line; do
            echo -e "    ${GRAY}│${NC} $line"
        done
    fi
    
    local exit_code=${PIPESTATUS[0]}
    
    echo ""
    echo -e "    ${GRAY}─────────────────────────────────────────────────────${NC}"
    
    if [ $exit_code -eq 0 ]; then
        print_status "success" "Команда выполнена успешно!"
        return 0
    else
        print_status "error" "Команда завершилась с ошибкой (код: $exit_code)"
        return 1
    fi
}

run_with_kdialog_progress() {
    local dbusRef=$(kdialog --progressbar "Инициализация..." 7 --title "🚀 Beautifulconfig v${VERSION}")
    
    qdbus $dbusRef Set "" value 0
    qdbus $dbusRef setLabelText "[1/7] Обновление репозитория SPI..."
    sudo spi repo-update >> "$LOG_FILE" 2>&1
    
    qdbus $dbusRef Set "" value 1
    qdbus $dbusRef setLabelText "[2/7] Запуск SPI..."
    spi >> "$LOG_FILE" 2>&1
    
    qdbus $dbusRef Set "" value 2
    qdbus $dbusRef setLabelText "[3/7] Обновление пакетов SPI..."
    sudo spi update >> "$LOG_FILE" 2>&1
    
    qdbus $dbusRef Set "" value 3
    qdbus $dbusRef setLabelText "[4/7] Обновление системных пакетов..."
    sudo apt update >> "$LOG_FILE" 2>&1
    sudo apt upgrade -y >> "$LOG_FILE" 2>&1
    
    qdbus $dbusRef Set "" value 4
    qdbus $dbusRef setLabelText "[5/7] Установка Telegram..."
    echo "2" | sudo spi install --flatpak telegram >> "$LOG_FILE" 2>&1
    
    qdbus $dbusRef Set "" value 5
    qdbus $dbusRef setLabelText "[6/7] Установка Baldi..."
    sudo spi install --spi baldi >> "$LOG_FILE" 2>&1
    
    qdbus $dbusRef Set "" value 6
    qdbus $dbusRef setLabelText "[7/7] Установка Chrome..."
    sudo spi install --spi chrome >> "$LOG_FILE" 2>&1
    
    qdbus $dbusRef Set "" value 7
    qdbus $dbusRef setLabelText "Готово!"
    sleep 1
    qdbus $dbusRef close
    
    return 0
}

run_with_zenity_progress() {
    (
        echo "0"
        echo "# Инициализация..."
        sleep 1
        
        echo "14"
        echo "# [1/7] Обновление репозитория SPI..."
        sudo spi repo-update >> "$LOG_FILE" 2>&1
        
        echo "28"
        echo "# [2/7] Запуск SPI..."
        spi >> "$LOG_FILE" 2>&1
        
        echo "42"
        echo "# [3/7] Обновление пакетов SPI..."
        sudo spi update >> "$LOG_FILE" 2>&1
        
        echo "56"
        echo "# [4/7] Обновление системных пакетов..."
        sudo apt update >> "$LOG_FILE" 2>&1
        sudo apt upgrade -y >> "$LOG_FILE" 2>&1
        
        echo "70"
        echo "# [5/7] Установка Telegram..."
        echo "2" | sudo spi install --flatpak telegram >> "$LOG_FILE" 2>&1
        
        echo "84"
        echo "# [6/7] Установка Baldi..."
        sudo spi install --spi baldi >> "$LOG_FILE" 2>&1
        
        echo "98"
        echo "# [7/7] Установка Chrome..."
        sudo spi install --spi chrome >> "$LOG_FILE" 2>&1
        
        echo "100"
        echo "# Готово!"
        
    ) | zenity --progress \
        --title="🚀 Beautifulconfig v${VERSION}" \
        --text="Подготовка..." \
        --percentage=0 \
        --auto-close \
        --width=500 \
        --no-cancel
    
    return $?
}

run_installation_terminal() {
    section_divider "ВЫПОЛНЕНИЕ КОМАНД"
    
    local total=7
    local current=0
    local failed=0
    
    declare -a commands=(
        "Обновление репозитория SPI|sudo spi repo-update|"
        "Запуск SPI|spi|"
        "Обновление пакетов SPI|sudo spi update|"
        "Обновление системных пакетов|sudo apt update && sudo apt upgrade -y|"
        "Установка Telegram (Flatpak)|sudo spi install --flatpak telegram|2"
        "Установка Baldi|sudo spi install --spi baldi|"
        "Установка Chrome|sudo spi install --spi chrome|"
    )
    
    for cmd_entry in "${commands[@]}"; do
        IFS='|' read -r description command auto_input <<< "$cmd_entry"
        current=$((current + 1))
        
        terminal_progress_bar $current $total "$description"
        echo ""
        
        if execute_command $current $total "$description" "$command" "$auto_input"; then
            print_status "success" "Шаг $current/$total завершён"
        else
            print_status "error" "Шаг $current/$total провален"
            failed=$((failed + 1))
        fi
        
        sleep 1
    done
    
    return $failed
}

show_final_report() {
    local failed=$1
    
    echo ""
    echo ""
    
    if [ $failed -eq 0 ]; then
        echo -e "${GREEN}${BOLD}"
        cat << 'EOF'
    ╔═══════════════════════════════════════════════════════════════════╗
    ║                                                                   ║
    ║     ███████╗██╗   ██╗ ██████╗ ██████╗███████╗███████╗███████╗     ║
    ║     ██╔════╝██║   ██║██╔════╝██╔════╝██╔════╝██╔════╝██╔════╝     ║
    ║     ███████╗██║   ██║██║     ██║     █████╗  ███████╗███████╗     ║
    ║     ╚════██║██║   ██║██║     ██║     ██╔══╝  ╚════██║╚════██║     ║
    ║     ███████║╚██████╔╝╚██████╗╚██████╗███████╗███████║███████║     ║
    ║     ╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝╚══════╝╚══════╝╚══════╝     ║
    ║                                                                   ║
    ║               ✅ ВСЕ ЗАДАЧИ ВЫПОЛНЕНЫ УСПЕШНО!                    ║
    ║                                                                   ║
    ╚═══════════════════════════════════════════════════════════════════╝
EOF
        echo -e "${NC}"
    else
        echo -e "${YELLOW}${BOLD}"
        cat << 'EOF'
    ╔═══════════════════════════════════════════════════════════════════╗
    ║          ⚠️  УСТАНОВКА ЗАВЕРШЕНА С ПРЕДУПРЕЖДЕНИЯМИ               ║
    ╚═══════════════════════════════════════════════════════════════════╝
EOF
        echo -e "${NC}"
        print_status "warning" "Некоторые команды завершились с ошибками: $failed"
    fi
    
    echo ""
    echo -e "    ${GRAY}╭─────────────────────────────────────────────────────────────╮${NC}"
    echo -e "    ${GRAY}│${NC} ${INFO}  Лог: ${CYAN}${LOG_FILE}${NC}"
    echo -e "    ${GRAY}│${NC} ${ROCKET} Версия: ${CYAN}Beautifulconfig v${VERSION}${NC}"
    echo -e "    ${GRAY}│${NC} ${STAR}  Автор: ${CYAN}${AUTHOR} © ${YEAR}${NC}"
    echo -e "    ${GRAY}╰─────────────────────────────────────────────────────────────╯${NC}"
    echo ""
}

select_mode() {
    section_divider "ВЫБОР РЕЖИМА РАБОТЫ"
    
    local de=$(detect_desktop_environment)
    local gui_name="Zenity"
    [ "$de" = "kde" ] && gui_name="KDialog"
    
    echo -e "    ${WHITE}${BOLD}Выберите режим установки:${NC}"
    echo ""
    echo -e "    ${CYAN}[1]${NC} ${WHITE}🖥️  Терминальный режим${NC}"
    echo -e "        ${GRAY}Подробный вывод команд с прогресс-баром${NC}"
    echo ""
    echo -e "    ${CYAN}[2]${NC} ${WHITE}🪟  GUI режим (${gui_name})${NC}"
    echo -e "        ${GRAY}Графический прогресс-бар${NC}"
    echo ""
    echo -e "    ${CYAN}[3]${NC} ${WHITE}🎨  Только обои${NC}"
    echo -e "        ${GRAY}Только загрузка и установка обоев${NC}"
    echo ""
    echo -e "    ${CYAN}[0]${NC} ${WHITE}❌  Выход${NC}"
    echo ""
    
    read -p "    Ваш выбор [1-3, 0]: " mode_choice
    echo ""
    
    case $mode_choice in
        1) return 1 ;;
        2) return 2 ;;
        3) return 3 ;;
        0) return 0 ;;
        *) return 1 ;;
    esac
}

confirm_start() {
    echo ""
    echo -e "    ${YELLOW}${BOLD}⚠️  ВНИМАНИЕ${NC}"
    echo -e "    ${WHITE}Будут выполнены следующие действия:${NC}"
    echo ""
    echo -e "    ${GRAY}1.${NC} Загрузка и установка обоев"
    echo -e "    ${GRAY}2.${NC} sudo spi repo-update"
    echo -e "    ${GRAY}3.${NC} spi"
    echo -e "    ${GRAY}4.${NC} sudo spi update"
    echo -e "    ${GRAY}5.${NC} sudo apt update && sudo apt upgrade -y"
    echo -e "    ${GRAY}6.${NC} sudo spi install --flatpak telegram (выбор 2)"
    echo -e "    ${GRAY}7.${NC} sudo spi install --spi baldi"
    echo -e "    ${GRAY}8.${NC} sudo spi install --spi chrome"
    echo ""
    
    read -p "    Продолжить? [Y/n]: " confirm
    
    case $confirm in
        [Nn]*) return 1 ;;
        *) return 0 ;;
    esac
}

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# ГЛАВНАЯ ФУНКЦИЯ
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

main() {
    echo "=== Beautifulconfig v${VERSION} by ${AUTHOR} ===" > "$LOG_FILE"
    echo "Started: $(date)" >> "$LOG_FILE"
    echo "User: $USER" >> "$LOG_FILE"
    echo "Desktop: $(detect_desktop_environment)" >> "$LOG_FILE"
    echo "========================================" >> "$LOG_FILE"
    
    show_banner
    animated_line
    
    check_system
    check_dependencies
    
    select_mode
    local mode=$?
    
    local de=$(detect_desktop_environment)
    
    case $mode in
        0)
            print_status "info" "Выход из программы..."
            exit 0
            ;;
        1)
            if confirm_start; then
                download_and_set_wallpaper
                run_installation_terminal
                show_final_report $?
            else
                print_status "info" "Операция отменена"
            fi
            ;;
        2)
            if confirm_start; then
                download_and_set_wallpaper
                
                if [ "$de" = "kde" ] && command -v kdialog &> /dev/null; then
                    run_with_kdialog_progress
                    kdialog --msgbox "Все задачи выполнены!\n\nАвтор: ${AUTHOR}\nЛог: $LOG_FILE" --title "✅ Успех!"
                else
                    run_with_zenity_progress
                    zenity --info --title="✅ Успех!" --text="Все задачи выполнены!\n\nАвтор: ${AUTHOR}\nЛог: $LOG_FILE" --width=400
                fi
                
                show_final_report 0
            else
                print_status "info" "Операция отменена"
            fi
            ;;
        3)
            download_and_set_wallpaper
            show_final_report 0
            ;;
    esac
    
    echo "" >> "$LOG_FILE"
    echo "Finished: $(date)" >> "$LOG_FILE"
    
    echo ""
    echo -e "    ${PURPLE}${BOLD}Спасибо за использование Beautifulconfig!${NC}"
    echo -e "    ${GRAY}Created by ${AUTHOR} © ${YEAR}${NC}"
    echo -e "    ${GRAY}Press any key to exit...${NC}"
    read -n 1 -s
}

main "$@"
