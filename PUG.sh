#!/bin/bash

# PUG - Password & User Generator
# Personalized: ONE WORD only (no compounds), 12+ per letter, no UwU/OwO, no freaky/cringe

words_a=(Alpha Astro Arcane Angry Adventure Alien Arcade Awesome Apex Alloy Amber Atlas)
words_b=(Beta Bot Blade Bear Byte Bacon Blaze Binary Boss Bandit Breeze Bolt)
words_c=(Code Core Cyber Clown Cheeto Chunky Crimson Cosmic Chaos Cipher Comet Circuit)
words_d=(Dev Dark Dragon Droid Delta Dynamo Drift Dagger Dune Dash Dawn Dream)
words_e=(Echo Elite Elf Eagle Ember Essence Empire Edge Eclipse Ember Echo Epic)
words_f=(Flux Fox Ferret Fluffy Funky Flame Fury Fusion Falcon Frost Fire Flash)
words_g=(Grid Ghost Goblin Greasy Galaxy Gear Guardian Glacier Glitch Gold Golem Grit)
words_h=(Hub Haxor Holo Horizon Hawk Helix Hunter Hazard Halo Heat Hive Honor)
words_i=(Ice Immortal Iguana Iron Inferno Impact Icon Impulse Iris Ivory Ink Iris)
words_j=(Jet Jedi Junkie Jaguar Jolt Justice Jinx Journey Jade Jewel Jolt Jive)
words_k=(Knight Koala King Kernel Kite Kaiser Kinetic Karma Kilo Kraken Krypton)
words_l=(Lab Lord Lion Lazy Laser Legacy Lantern Lunar Lava Leaf Link Logic)
words_m=(Mega Mystic Mech Moist Muffin Master Mirage Matrix Meteor Maverick Myth Muse)
words_n=(Neo Ninja Nebula Nomad Nexus Nova Neutron Night Nova Nexus North Nuke)
words_o=(Oracle Overlord Omega Oasis Orbit Outlaw Oxygen Opal Orbit Ozone Odin)
words_p=(Pulse Phantom Panda Pickle Pwner Potato Pixel Proton Power Prism Plague Prism)
words_q=(Quantum Quest Queen Quasar Quill Quartz Questor Quake Quill Quest Quartz)
words_r=(Ray Reaper Robot Rune Reactor Rift Rogue Radar Realm Rush Raven Rift)
words_s=(Storm Shadow Shark Sweaty Sorcerer Stinky Spark Surge Saber Sonic Slate Swarm)
words_t=(Tower Taco Tiger Tempest Titan Tracer Turbo Thorn Talon Torch Tide Terra)
words_u=(Ultra Unicorn Unity Uranus Urban Usher Utopia Ultra Unity Uplink Umbra)
words_v=(Void Viper Vortex Viral Vanguard Valor Venom Vertex Vibe Volt Vex Vibe)
words_w=(Wolf Wizard Waffle Warrior Wraith Whirl Wind Walker Warden Wave Wisp Wish)
words_x=(Xray Xenon Xerox Xanadu Xavier Xeno Xray Xtreme Xray Xerox Xeno Xray)
words_y=(Yeti Yellow Yeet Yonder Yukon Yoda Yield Yawn Yolk Yonder Yawn Yawn)
words_z=(Zen Zero Zombie Zany Zebra Zeta Zephyr Zorro Zenith Zap Zodiac Zone)

serious_prefix=(Alpha Beta Code Core Dev Echo Flux Grid Jet Nova Pulse Ray Storm Void Zen Zeta Zephyr)
serious_suffix=(Lab Core Net Hub Link Path Node Gate Way Flux Sync Byte Core Pro Elite Zone Zero)

hacker_adj=(Dark Cyber Neo Mega Ultra Shadow Ghost Ninja Haxor L33t Byte Phr34k Elite Viral ZeroDay Zapper)
hacker_noun=(Lord Master King Overlord Wizard Knight Rider Slayer Pwner Bot Reaper Oracle Zombie Zephyr)
hacker_tag=(420 69 1337 xX Xx Elite Pro 9000 Z GG Zero Zeta)

dumb_adj=(Sweaty Toasted Pickle Waffle Cheeto Moist Chunky Greasy Funky Stinky Bacon Noodle Fluffy Squishy Zany Zesty)
dumb_noun=(Feet Sandwich Sock Grandma Butt Taco Diaper Clown Ferret Muffin Burrito Lamp Goblin Potato Zombie Zipper)
dumb_tag=(Fart Licker IRL NoScope OnToast WithCheese Supreme TheThird Yeet Zoomer Zonk)

fantasy_adj=(Mystic Enchanted Dragon Elf Goblin Arcane Sorcerer Warrior Rune Zodiac Zephyr)
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
printf "\e[${c_title}m║               PUG v1.0               ║\e[0m\n"
printf "\e[${c_title}m║     Password & User Generator        ║\e[0m\n"
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

if [[ $mode == "7" ]]; then
    printf "\e[93mEnter your name (e.g. grayson, zachary, sam):\e[0m "
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
        printf "\e[${c_title}m║       PUG PASS MENU        ║\e[0m\n"
        printf "\e[${c_title}m╚════════════════════════════╝\e[0m\n\n"
        printf "\e[${c_opt}m[p] Personalized (questions)\e[0m\n"
        printf "\e[${c_opt}m[r] Entirely Random\e[0m\n"
        printf "\e[${c_opt}m[m] Main Menu\e[0m\n"
        printf "\e[${c_opt}m[q] Quit\e[0m\n\n"
        read -rsn1 submode
        clear

        [[ $submode == "q" || $submode == "Q" ]] && exit
        [[ $submode == "m" || $submode == "M" ]] && exec "$0"

        if [[ $submode == "p" ]]; then
            printf "\e[93mFavorite color? \e[0m"; read -r color
            printf "\e[93mPet's name? \e[0m"; read -r pet
            printf "\e[93mBirth year? \e[0m"; read -r year
            color=${color,,}; pet=${pet,,}; year=${year: -2}
            name=$(echo "${color^}${pet^}${year}!@" | tr 'aieo' '@130')
            tag="PERSONAL PASS"
        elif [[ $submode == "r" ]]; then
            chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>?'
            name=$(head /dev/urandom | tr -dc "$chars" | head -c 16)
            tag="RANDOM PASS"
        fi
    else
        case $mode in
            1) pre="${serious_prefix[RANDOM % ${#serious_prefix[@]}]}"
               suf="${serious_suffix[RANDOM % ${#serious_suffix[@]}]}"
               name="$pre$suf"
               (( RANDOM % 3 == 0 )) && name+="$((RANDOM % 99))"
               tag="PRO MODE" ;;
            2) adj="${hacker_adj[RANDOM % ${#hacker_adj[@]}]}"
               noun="${hacker_noun[RANDOM % ${#hacker_noun[@]}]}"
               name="$adj$noun"
               (( RANDOM % 3 == 0 )) && name+="${hacker_tag[RANDOM % ${#hacker_tag[@]}]}"
               (( RANDOM % 2 == 0 )) && name+="69"
               tag="L33T HACKER" ;;
            3) adj="${dumb_adj[RANDOM % ${#dumb_adj[@]}]}"
               noun="${dumb_noun[RANDOM % ${#dumb_noun[@]}]}"
               name="$adj$noun"
               (( RANDOM % 2 == 0 )) && name+="${dumb_tag[RANDOM % ${#dumb_tag[@]}]}"
               tag="CERTIFIED CLOWN" ;;
            4) adj="${fantasy_adj[RANDOM % ${#fantasy_adj[@]}]}"
               noun="${fantasy_noun[RANDOM % ${#fantasy_noun[@]}]}"
               name="$adj$noun"
               (( RANDOM % 3 == 0 )) && name+="${fantasy_tag[RANDOM % ${#fantasy_tag[@]}]}"
               tag="FANTASY REALM" ;;
            5) adj="${scifi_adj[RANDOM % ${#scifi_adj[@]}]}"
               noun="${scifi_noun[RANDOM % ${#scifi_noun[@]}]}"
               name="$adj$noun"
               (( RANDOM % 3 == 0 )) && name+="${scifi_tag[RANDOM % ${#scifi_tag[@]}]}"
               tag="SCI-FI SPACE" ;;
            6) adj="${animal_adj[RANDOM % ${#animal_adj[@]}]}"
               noun="${animal_noun[RANDOM % ${#animal_noun[@]}]}"
               name="$adj$noun"
               (( RANDOM % 3 == 0 )) && name+="${animal_tag[RANDOM % ${#animal_tag[@]}]}"
               tag="ANIMAL KINGDOM" ;;
            7) 
               var="words_${first_letter,,}"
               eval "word_list=(\${$var[@]})"
               selected="${word_list[RANDOM % ${#word_list[@]}]}"
               style=$((RANDOM % 4))
               case $style in
                   0) name="${base_name}The$selected" ;;
                   1) name="${base_name}Is$selected" ;;
                   2) name="${base_name}$selected" ;;
                   3) name="${base_name}$selected$((RANDOM % 999))" ;;
               esac
               tag="$base_name SPECIAL" ;;
            q|Q) clear; printf "\e[32m>> PUG out. 🐶 <<\e[0m\n"; exit ;;
            *) clear; printf "\e[91mInvalid. Pick 1-8 or q.\e[0m\n"; sleep 1; exec "$0" ;;
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
    [[ $key == "q" || $key == "Q" ]] && clear && printf "\e[32m>> PUG out, %s. 🐶 <<\e[0m\n" "${base_name:-user}" && exit
    [[ $key == "m" || $key == "M" ]] && exec "$0"
done
