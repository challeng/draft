require 'open-uri'
dota_heroes = ['earthshaker', 'sven', 'tiny', 'kunkka', 'beastmaster', 'dragon_knight', 'rattletrap', 'omniknight', 'huskar', 'alchemist', 'brewmaster', 'treant', 'wisp', 'centaur', 'shredder', 'bristleback', 'tusk', 'elder_titan', 'axe', 'pudge', 'sand_king', 'slardar', 'tidehunter', 'skeleton_king', 'life_stealer', 'night_stalker', 'doom_bringer', 'spirit_breaker', 'lycan', 'chaos_knight', 'undying', 'magnataur', 'abaddon', 'antimage', 'drow_ranger', 'juggernaut', 'mirana', 'morphling', 'phantom_lancer', 'vengefulspirit', 'riki', 'sniper', 'templar_assassin', 'luna', 'bounty_hunter', 'ursa', 'gyrocopter', 'lone_druid', 'naga_siren', 'troll_warlord', 'bloodseeker', 'nevermore', 'razor', 'venomancer', 'faceless_void', 'phantom_assassin', 'viper', 'clinkz', 'broodmother', 'weaver', 'spectre', 'meepo', 'nyx_assassin', 'slark', 'medusa', 'crystal_maiden', 'puck', 'storm_spirit', 'windrunner', 'zuus', 'lina', 'shadow_shaman', 'tinker', 'furion', 'enchantress', 'jakiro', 'chen', 'silencer', 'ogre_magi', 'rubick', 'disruptor', 'keeper_of_the_light', 'skywrath_mage', 'bane', 'lich', 'lion', 'witch_doctor', 'enigma', 'necrolyte', 'warlock', 'queenofpain', 'death_prophet', 'pugna', 'dazzle', 'leshrac', 'dark_seer', 'batrider', 'ancient_apparition', 'invoker', 'obsidian_destroyer', 'shadow_demon', 'visage']

namespace :setup do

  desc "downloads the hero images and saves to a folder"
  task get_hero_images: :environment do

  	dota_heroes.each do |hero|
			response = open("http://cdn.dota2.com/apps/dota2/images/heroes/#{hero}_hphover.png").read

			File.open( "./app/assets/images/heroes/#{hero}.png", 'wb' ) { |file|
		  	file.write(response)
			}

			puts "#{hero} has been imported"
		end	

  end
end





