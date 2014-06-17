
desc "Loader"

namespace :screens do
	task load: :environment do

		c = Category.create name: 'Prospective Memory'

		seq = 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
		Prospective memory is the ability to remember to do things in the future. This is a very common type of memory problem, and most people struggle with prospective memory occasionally, because it’s sometimes difficult to remember to do things in the future. 

		Examples of prospective memory include remembering that you have a doctor’s appointment next Tuesday, that it’s your brother’s birthday on the 23rd, that you have to pick up dog food on the way home, or that you promised to return your neighbor’s wrench that you borrowed. 

		One of the best organizational and prospective memory skills to have is using a calendar. If you don’t already use a calendar, this is an important skill to learn and use. If you do already use a calendar, we have some tips to help you get the most out of your calendar. These are some of the benefits of using a calendar every day:
		<ul>	
			<li>You’ll need to rely less on your memory, which reduces stress.
			<li>You can see what’s coming up in your schedule.
			<li>You’ll also have a record of what happened in the past.
			<li>Your calendar will help you make use of routines.
			<li>Your calendar will help you complete tasks that you don’t necessarily want to do (e.g., exercise, chores, studying, yard work, gift shopping).
			<li>A calendar is a great place important info, like your “to do” list, your daily schedule, commonly used phone numbers, addresses, or transportation routes, a list of your medications and their dosages, and any other medical info you want to have handy.
			<li>If you use an electronic calendar, you can program electronic reminders (e.g., water plants every Friday; neck stretches daily at 2 pm; check oil in car every month).
		</ul>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
		 What type of calendar will work for you? Paper or electronic?
		 <ul>
			<li>Choose a calendar you’re willing to carry with you at all times. 
			<li>You’ll be checking your calendar at least once a day, and you’ll have a planning session for the week ahead at least once a week.
			<li>If you choose a paper calendar, think about pocket size vs. a larger format. Balance convenience with how much space you need to write. Paper calendars of different sizes are available at grocery stores, dollar stores, etc.
			<li>If electronic, what system will you use? 
		</ul>

		</p>
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>

		VIDEO: Calendar use. No one correct system. Daily checking. About once a week, it’s a good idea to plan for the week ahead. For example, if you have a party to attend, you might need to bring a gift or some food, and you can plan ahead for that.

		</p>
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>

		QUIZ: Will you try using a calendar regularly?
		Checkbox (Y/N/Already use this strategy) and track.

		</p>
		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>

		If you don’t already have a calendar, this is a good time to take a break. Come back to the CogSMART app when you’ve got your calendar. If you have your calendar ready, continue on to the next screen.

		</p>
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>

		First, enter all the upcoming events you know about into your calendar. For example, work or school events, due dates for bills or rent, social events, health-related events like doctor appointments.
		</p>
		<p>
		Then, enter any reminders you need for those events. For example, let’s say that you attend an event the first Wednesday morning of every month. Before your meeting, on Monday or Tuesday, you’ll want to make sure you have your bus pass, or enough gas in your car, to get to your meeting. Or if you have a project due on Friday morning, you’ll want to schedule times to work on your project before it’s due. Also write down any items you need to bring with you for these events.

		</p>
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>

		One of the next things you might want to put in your calendar is time to use the CogSMART app. This will remind you to use the app on a regular basis in order to keep moving forward. 

		</p>
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>

		Using your calendar to promote routines is also helpful, and will save you a lot of stress. Think about entering events that happen on a weekly, monthly, quarterly, or yearly basis that should go in your calendar. These could be things like taking out the trash, backing up your computer, sending a birthday card to a friend, watching a favorite TV show, checking the air pressure in your tires, or calling a sibling. Sometimes, it helps to think about the last time you forgot something and it made you upset – for example, if you forgot to do something that you had promised you would do, or if you forgot an important person’s birthday. 
		</p>
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
		Finally, enter things into your calendar that you should do, even if you don’t always want to do them. For example, exercising or balancing your checkbook. Having these events scheduled in your calendar, like an appointment, will help make sure they get done.
		</p>
		END

		puts "Saved screen #{seq}"
		seq += 1
		
	end
end



