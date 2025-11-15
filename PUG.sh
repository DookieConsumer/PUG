#!/bin/bash

serious_prefix=(Alpha Beta Code Core Dev Echo Flux Grid Jet Nova Pulse Ray Storm Void Zen Zeta Zephyr)
serious_suffix=(Lab Core Net Hub Link Path Node Gate Way Flux Sync Byte Core Pro Elite Zone Zero)

hacker_adj=(Dark Cyber Neo Mega Ultra Shadow Ghost Ninja Haxor L33t Byte Phr34k Elite Viral ZeroDay Zapper)
hacker_noun=(Lord Master King Overlord Wizard Knight Rider Slayer Pwner Bot Reaper Oracle Zombie Zephyr)
hacker_tag=(420 69 1337 xX Xx Elite Pro 9000 Z GG Zero Zeta)

dumb_adj=(Sweaty Toasted Pickle Waffle Cheeto Moist Chunky Greasy Funky Stinky Bacon Noodle Fluffy Squishy Zany Zesty)
dumb_noun=(Feet Sandwich Sock Grandma Butt Taco Diaper Clown Ferret Muffin Burrito Lamp Goblin Potato Zombie Zipper)
dumb_tag=(Fart Licker UwU IRL NoScope OnToast WithCheese Supreme TheThird OwO Yeet Zoomer Zonk)

fantasy_adj=(Mystic Enchanted Dragon Elf Goblin Arcane Sorcerer Warrior Mystic Rune Zodiac Zephyr)
fantasy_noun=(Realm Quest Blade Shield Tower Spell Forge Legend Myth Lore Zenith Ziggurat)
fantasy_tag=(TheGreat Eternal 999 Immortal Zenith Zephyr)

scifi_adj=(Neo Cyber Quantum Stellar Galactic Astro Plasma Vortex Holo Mech Zeta Zero)
scifi_noun=(Droid Bot Ship Station Core Reactor Nebula Pulse Warp Drive Zodiac Zephyr)
scifi_tag=(MkII X9 3000 Prime Alpha Zeta Zero)

animal_adj=(Fierce Wild Savage Cute Fluffy Angry Lazy Sleepy Hungry Thirsty Zany Zippy)
animal_noun=(Wolf Fox Bear Lion Tiger Eagle Shark Panda Koala Penguin Zebra Zorse)
animal_tag=(King Queen Master Pro Elite 123 Rawr Zoomer Zapper)

c_title=$((96 + RANDOM % 6))
c_opt=37
c_gen=92

clear
printf "\e[${c_title}m╔══════════════════════════════════════╗\e[0m\n"
printf "\e[${c_title}m║   ULTIMATE USER/PASS GENERATOR       ║\e[0m\n"
printf "\e[${c_title}m╚══════════════════════════════════════╝\e[0m\n\n"

printf "\e[${c_opt}m[1] Serious / Pro\e[0m\n"
printf "\e[${c_opt}m[2] Corny Hacker\e[0m\n"
printf "\e[${c_opt}m[3] Pure Garbage\e[0m\n"
printf "\e[${c_opt}m[4] Fantasy\e[0m\n"
printf "\e[${c_opt}m[5] Sci-Fi\e[0m\n"
printf "\e[${c_opt}m[6] Animal-Themed\e[0m\n"
printf "\e[${c_opt}m[7] Personalized Username\e[0m\n"
printf "\e[${c_opt}m[8] Password Generator\e[0m\n"
printf "\e[${c_opt}m[q] Quit\e[0m\n\n"

read -rsn1 mode
clear

if [[ $mode == "7" || $mode == "p" ]]; then
    printf "\e[93mEnter your name (e.g. grayson, alex, sam):\e[0m "
    read -r base_name
    base_name=${base_name,,}
    base_name=${base_name^}
    [[ -z "$base_name" ]] && base_name="User"
    first_letter=${base_name:0:1}
    first_letter=${first_letter^^}
fi

while :; do
    if [[ $mode == "8" ]]; then
        printf "\e[${c_title}m╔════════════════════════════╗\e[0m\n"
        printf "\e[${c_title}m║   PASSWORD SUB-MENU        ║\e[0m\n"
        printf "\e[${c_title}m╚════════════════════════════╝\e[0m\n\n"
        printf "\e[${c_opt}m[p] Personalized (questions)\e[0m\n"
        printf "\e[${c_opt}m[r] Entirely Random\e[0m\n"
        printf "\e[${c_opt}m[m] Main Menu\e[0m\n"
        printf "\e[${c_opt}m[q] Quit\e[0m\n\n"
        read -rsn1 submode
        clear

        if [[ $submode == "q" || $submode == "Q" ]]; then exit; fi
        if [[ $submode == "m" || $submode == "M" ]]; then exec "$0"; fi

        if [[ $submode == "p" ]]; then
            printf "\e[93mFavorite color? \e[0m"; read -r color
            printf "\e[93mPet's name? \e[0m"; read -r pet
            printf "\e[93mBirth year? \e[0m"; read -r year
            color=${color,,}; pet=${pet,,}; year=${year: -2}
            pass=$(echo "${color^}${pet^}${year}!@" | tr 'aieo' '@130')
            name="$pass"
            tag="🔑 PERSONAL PASS 🔑"
        elif [[ $submode == "r" ]]; then
            chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>?'
            name=$(head /dev/urandom | tr -dc "$chars" | head -c 16)
            tag="🎲 RANDOM PASS 🎲"
        fi
    else
        case $mode in
            1)
                pre="${serious_prefix[RANDOM % ${#serious_prefix[@]}]}"
                suf="${serious_suffix[RANDOM % ${#serious_suffix[@]}]}"
                name="$pre$suf"
                (( RANDOM % 3 == 0 )) && name+="$((RANDOM % 99))"
                tag="⚡ PRO MODE ⚡"
                ;;
            2)
                adj="${hacker_adj[RANDOM % ${#hacker_adj[@]}]}"
                noun="${hacker_noun[RANDOM % ${#hacker_noun[@]}]}"
                name="$adj$noun"
                (( RANDOM % 3 == 0 )) && name+="${hacker_tag[RANDOM % ${#hacker_tag[@]}]}"
                (( RANDOM % 2 == 0 )) && name+="69"
                tag="🔥 L33T HACKER 🔥"
                ;;
            3)
                adj="${dumb_adj[RANDOM % ${#dumb_adj[@]}]}"
                noun="${dumb_noun[RANDOM % ${#dumb_noun[@]}]}"
                name="$adj$noun"
                (( RANDOM % 2 == 0 )) && name+="${dumb_tag[RANDOM % ${#dumb_tag[@]}]}"
                tag="🤡 CERTIFIED CLOWN 🤡"
                ;;
            4)
                adj="${fantasy_adj[RANDOM % ${#fantasy_adj[@]}]}"
                noun="${fantasy_noun[RANDOM % ${#fantasy_noun[@]}]}"
                name="$adj$noun"
                (( RANDOM % 3 == 0 )) && name+="${fantasy_tag[RANDOM % ${#fantasy_tag[@]}]}"
                tag="🧙 FANTASY REALM 🧙"
                ;;
            5)
                adj="${scifi_adj[RANDOM % ${#scifi_adj[@]}]}"
                noun="${scifi_noun[RANDOM % ${#scifi_noun[@]}]}"
                name="$adj$noun"
                (( RANDOM % 3 == 0 )) && name+="${scifi_tag[RANDOM % ${#scifi_tag[@]}]}"
                tag="🚀 SCI-FI SPACE 🚀"
                ;;
            6)
                adj="${animal_adj[RANDOM % ${#animal_adj[@]}]}"
                noun="${animal_noun[RANDOM % ${#animal_noun[@]}]}"
                name="$adj$noun"
                (( RANDOM % 3 == 0 )) && name+="${animal_tag[RANDOM % ${#animal_tag[@]}]}"
                tag="🐾 ANIMAL KINGDOM 🐾"
                ;;
            7)
                all_words=("${serious_prefix[@]}" "${serious_suffix[@]}" "${hacker_adj[@]}" "${hacker_noun[@]}" "${hacker_tag[@]}" "${dumb_adj[@]}" "${dumb_noun[@]}" "${dumb_tag[@]}" "${fantasy_adj[@]}" "${fantasy_noun[@]}" "${fantasy_tag[@]}" "${scifi_adj[@]}" "${scifi_noun[@]}" "${scifi_tag[@]}" "${animal_adj[@]}" "${animal_noun[@]}" "${animal_tag[@]}")
                matching_words=()
                for word in "${all_words[@]}"; do
                    word_upper=${word:0:1}
                    word_upper=${word_upper^^}
                    if [[ "$word_upper" == "$first_letter" ]]; then
                        matching_words+=("$word")
                    fi
                done
                if [[ ${#matching_words[@]} -eq 0 ]]; then
                    name="${base_name}TheGreat"
                else
                    selected="${matching_words[RANDOM % ${#matching_words[@]}]}"
                    style=$((RANDOM % 4))
                    case $style in
                        0) name="${base_name}The$selected" ;;
                        1) name="${base_name}Is$selected" ;;
                        2) name="${base_name}$selected" ;;
                        3) name="${base_name}$selected$((RANDOM % 999))" ;;
                    esac
                fi
                tag="🎨 $base_name SPECIAL 🎨"
                ;;
            q|Q) clear; printf "\e[32m>> Secured. Exit. <<\e[0m\n"; exit ;;
            *) clear; printf "\e[91mInvalid. Try 1-8 or q.\e[0m\n"; sleep 1; exec "$0" ;;
        esac
    fi

    clear
    printf "\e[${c_gen}m%s\e[0m  " "$tag"
    for ((i=0; i<${#name}; i++)); do
        printf "\e[9%dm%c\e[0m" $((RANDOM%7+1)) "${name:i:1}"
        sleep 0.04 2>/dev/null || read -t 0.04 -n 1
    done
    echo -e "\n"

    printf "\e[90m[ENTER] = again | [m] = menu | [q] = quit\e[0m\n"
    read -rsn1 key
    [[ $key == "q" || $key == "Q" ]] && clear && printf "\e[32m>> Stay secure, %s. <<\e[0m\n" "${base_name:-user}" && exit
    [[ $key == "m" || $key == "M" ]] && exec "$0"
done
