#!/bin/bash

# ╔═══════════════════════════════════════════════════════════════════╗
# ║  Beautifulconfig v2.0 for Runget                                  ║
# ║  Created by kirilldual0987 © 2025                                 ║
# ║  Rewritten with GUI Progress Bar & Beautiful Terminal Output      ║
# ╚═══════════════════════════════════════════════════════════════════╝

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# КОНФИГУРАЦИЯ
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VERSION="2.0"
AUTHOR="kirilldual0987"
YEAR="2025"

# URL обоев с Google Drive
WALLPAPER_URL="https://drive.usercontent.google.com/u/0/uc?id=1DMUeoRB3fMxzBVo33jyiKJCCctfCTPXb&export=download"
WALLPAPER_DIR="$HOME/.local/share/backgrounds"
WALLPAPER_FILE="$WALLPAPER_DIR/beautifulconfig_wallpaper.jpg"

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
DIM='\033[2m'
ITALIC='\033[3m'
NC='\033[0m'

# Символы
CHECK="✓"
CROSS="✗"
ARROW="➤"
STAR="★"
GEAR="⚙"
DOWNLOAD="⬇"
ROCKET="🚀"
PACKAGE="📦"
PAINT="🎨"
DONE="✅"
FAIL="❌"
WARN="⚠️"
INFO="ℹ️"

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
    echo -e "${GRAY}                              Designed for Runget Linux${NC}"
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

spinner() {
    local pid=$1
    local message="$2"
    local spinstr='⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏'
    local i=0
    
    while kill -0 $pid 2>/dev/null; do
        printf "\r    ${CYAN}${spinstr:$i:1}${NC} ${message}"
        i=$(( (i+1) % ${#spinstr} ))
        sleep 0.1
    done
    printf "\r"
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
# ОСНОВНЫЕ ФУНКЦИИ
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

check_dependencies() {
    section_divider "ПРОВЕРКА ЗАВИСИМОСТЕЙ"
    
    local deps=("curl" "wget" "zenity")
    local missing=()
    
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
    
    if command -v gnome-shell &> /dev/null; then
        local gnome_ver=$(gnome-shell --version 2>/dev/null)
        print_status "info" "GNOME: ${gnome_ver}"
    else
        print_status "warning" "GNOME Shell не обнаружен"
    fi
    
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
    
    print_status "task" "Загрузка обоев с Google Drive..."
    print_status "command" "curl -L \"$WALLPAPER_URL\" -o \"$WALLPAPER_FILE\""
    
    mkdir -p "$WALLPAPER_DIR"
    
    echo ""
    curl -L "$WALLPAPER_URL" -o "$WALLPAPER_FILE" \
        --progress-bar \
        --connect-timeout 30 \
        --max-time 120 2>&1 | \
        stdbuf -o0 tr '\r' '\n' | \
        while IFS= read -r line; do
            echo -ne "\r    ${CYAN}${DOWNLOAD}${NC} $line"
        done
    
    echo ""
    
    if [ -f "$WALLPAPER_FILE" ] && [ -s "$WALLPAPER_FILE" ]; then
        print_status "success" "Обои загружены: $WALLPAPER_FILE"
        
        print_status "task" "Применение обоев..."
        gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_FILE" 2>> "$LOG_FILE"
        gsettings set org.gnome.desktop.background picture-uri-dark "file://$WALLPAPER_FILE" 2>> "$LOG_FILE"
        gsettings set org.gnome.desktop.background picture-options "zoom" 2>> "$LOG_FILE"
        
        print_status "success" "Обои успешно применены!"
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

run_with_zenity_progress() {
    (
        echo "0"
        echo "# Инициализация..."
        sleep 1
        
        echo "5"
        echo "# [1/7] Обновление репозитория SPI..."
        sudo spi repo-update >> "$LOG_FILE" 2>&1
        
        echo "20"
        echo "# [2/7] Запуск SPI..."
        spi >> "$LOG_FILE" 2>&1
        
        echo "35"
        echo "# [3/7] Обновление пакетов SPI..."
        sudo spi update >> "$LOG_FILE" 2>&1
        
        echo "50"
        echo "# [4/7] Обновление системных пакетов (apt)..."
        sudo apt update >> "$LOG_FILE" 2>&1
        sudo apt upgrade -y >> "$LOG_FILE" 2>&1
        
        echo "65"
        echo "# [5/7] Установка Telegram (Flatpak)..."
        echo "2" | sudo spi install --flatpak telegram >> "$LOG_FILE" 2>&1
        
        echo "80"
        echo "# [6/7] Установка Baldi..."
        sudo spi install --spi baldi >> "$LOG_FILE" 2>&1
        
        echo "90"
        echo "# [7/7] Установка Chrome..."
        sudo spi install --spi chrome >> "$LOG_FILE" 2>&1
        
        echo "100"
        echo "# Готово! Все задачи выполнены."
        
    ) | zenity --progress \
        --title="🚀 Beautifulconfig v${VERSION} by ${AUTHOR}" \
        --text="Подготовка к установке..." \
        --percentage=0 \
        --auto-close \
        --width=500 \
        --height=150 \
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
    ║                                                                   ║
    ║          ⚠️  УСТАНОВКА ЗАВЕРШЕНА С ПРЕДУПРЕЖДЕНИЯМИ               ║
    ║                                                                   ║
    ╚═══════════════════════════════════════════════════════════════════╝
EOF
        echo -e "${NC}"
        print_status "warning" "Некоторые команды завершились с ошибками: $failed"
    fi
    
    echo ""
    echo -e "    ${GRAY}╭─────────────────────────────────────────────────────────────╮${NC}"
    echo -e "    ${GRAY}│${NC} ${INFO}  Лог сохранён: ${CYAN}${LOG_FILE}${NC}"
    echo -e "    ${GRAY}│${NC} ${ROCKET} Версия: ${CYAN}Beautifulconfig v${VERSION}${NC}"
    echo -e "    ${GRAY}│${NC} ${STAR}  Автор: ${CYAN}${AUTHOR} © ${YEAR}${NC}"
    echo -e "    ${GRAY}╰─────────────────────────────────────────────────────────────╯${NC}"
    echo ""
}

select_mode() {
    section_divider "ВЫБОР РЕЖИМА РАБОТЫ"
    
    echo -e "    ${WHITE}${BOLD}Выберите режим установки:${NC}"
    echo ""
    echo -e "    ${CYAN}[1]${NC} ${WHITE}🖥️  Терминальный режим${NC}"
    echo -e "        ${GRAY}Подробный вывод команд в терминале с ASCII прогресс-баром${NC}"
    echo ""
    echo -e "    ${CYAN}[2]${NC} ${WHITE}🪟  GUI режим (Zenity)${NC}"
    echo -e "        ${GRAY}Графический прогресс-бар, вывод в лог-файл${NC}"
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
    echo -e "    ${GRAY}6.${NC} sudo spi install --flatpak telegram (выбор пункта 2)"
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
    echo "========================================" >> "$LOG_FILE"
    
    show_banner
    animated_line
    
    check_system
    check_dependencies
    
    select_mode
    local mode=$?
    
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
                print_status "info" "Операция отменена пользователем"
            fi
            ;;
        2)
            if confirm_start; then
                download_and_set_wallpaper
                run_with_zenity_progress
                if [ $? -eq 0 ]; then
                    zenity --info \
                        --title="✅ Успех!" \
                        --text="Все задачи выполнены успешно!\n\nАвтор: ${AUTHOR}\nЛог: $LOG_FILE" \
                        --width=400
                else
                    zenity --warning \
                        --title="⚠️ Предупреждение" \
                        --text="Некоторые задачи могли завершиться с ошибками.\n\nЛог: $LOG_FILE" \
                        --width=400
                fi
                show_final_report 0
            else
                print_status "info" "Операция отменена пользователем"
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
