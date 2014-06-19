
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
		
		s = c.screens.create seq: seq, content: <<-END
		<p>
			This will be a checkbox form and should be easily accessible (like a bookmark). 
		</p>

		<p>
			That’s the end of Module 1, on organization, prospective memory, and calendar use. For home practice, be sure to practice these skills. Check them off once you’ve completed the home practice activities.
		</p>

		<p>
			Make a “home for your stuff” if you haven’t already. 
				<ol>
					<li>Choose a container.</li>
					<li>Decide where the container will be kept in your home.</li>
					<li>Start using this home for your personal items every day.</li>
				</ol>
			Carry your calendar with you every day. Enter all the upcoming events you know about, be sure to schedule time to work on CogSMART, and also enter routine events and activities you should do.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		cc = Category.create name: 'Prospective Memory continued'

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			How did your home practice go? 
			Remember to check off the home practice activities you did. 
			You said that you would be willing to try (making a home for your stuff) (and) (calendar use). 
			If you had any trouble, review Module 1 and see if you can make improvements.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			Module 2. Prospective Memory continued.
		</p>

		<p>
			Recall that prospective memory is the ability to remember to do things in the future. 
			[If applicable: You said you had some difficulty in this area. This next module features strategies to address these problems.] 
			Prospective memory difficulty is a common memory problem for many people and tends to be challenging for everyone.
		</p>

		<p>
			We will be using calendars and “to do” lists to help improve prospective memory.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			First, let’s go back to thinking about calendar use, which was introduced in Module 1. Plan to check your calendar 1-3 times every day (or more if you are busy or tend to forget things.) Remember to have it with you always. How are you going to remember to check your calendar? 
		</p>
		
		<p>
			If you’re using an electronic calendar or smart device, you might want to set alarms or reminders to check your calendar. Take a moment to set those alarms now. If you’re not using an electronic calendar or smart device, not to worry, we’ve got you covered.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			One of the easiest ways to establish a new habit (like checking your calendar) is to link that new behavior to something you already do. We call this “linking tasks.” This strategy will help you remember to check your calendar, but it is useful for remembering to do other tasks, too, like take medications.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Will you try the linking tasks strategy?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			Another strategy to try is “automatic places.” This just means putting your calendar where you’ll see it every morning, and seeing it will remind you to check it. Your automatic place could be your “home for your stuff,” for example.
		</p>

		<p>
			QUIZ: Is the automatic places strategy something you’ll try?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		p = s.prompts.create content: "Where will you keep your calendar?", prompt_type: 'text_field'

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			VIDEO: Setting alarms, Linking tasks, Automatic places.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Will you try setting an alarm, linking tasks, or automatic places to remember to check your calendar?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already use one of these to remember to check calendar and track.", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			Now we’re going to talk about “to do” lists. Things that need to get done on a certain day should go in your calendar for that day. Other to do items should go on your to do list.	
		</p>
		<p>
			After coming up with a big list of things you want to do, it is helpful to decide whether each item needs to be done immediately, or if it can wait until you have more time to do it. This helps make the to do list less overwhelming. One way to prioritize your to do list is to divide the items up into three different categories.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			Here is an example of a prioritized to do list. Go ahead and fill it in with your own items. If you use a paper calendar, you can then transfer your to do list to a sticky note and keep it in your calendar. If you use an electronic calendar, you might want to use a word processing document for your to do list, or you might use an app on your smart device.
		</p>
		<p>
			<strong>Click here</strong> to receive a blank copy of this to do list via email.
		</p>
		<table>
			<tr>
				<th>High Priority <br/>(today or tomorrow)</th>
				<th>Medium Priority<br/>(within a week or so)</th>
				<th>Low Priority<br/>(within a month or so)</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>

		</table>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Are to do lists something you’re willing to try?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			Can you assign dates to any of your to do items? If so, you can transfer those into your calendar. Go ahead and take a moment to do that now.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			If you’re not sure what should go on your to do list, here’s a list of categories that might help you identify things you need to do. Feel free to go back and add items to your to do list.
		</p>
		<table>
			<tr>
				<th>APPOINTMENTS</th>
				<th>KITCHEN</th>
				<th>TRANSPORTATION</th>
			</tr>
			<tr>
				<td>Scheduling</td>
				<td>Mop floors</td>
				<td>Schedule Rides</td>
			</tr>
			<tr>
				<td>Preparing Materials</td>
				<td>Clean stove/oven</td>
				<td>Bus Pass/Schedules</td>
			</tr>
			<tr>
				<td>Transportation</td>
				<td>Clean out cupboards (toss old food, clean shelves, organize)</td>
				<td>Automobile Maintenance </td>
			</tr>
			<tr>
				<td>Social outings</td>
				<td>Scrub trash can/under sink</td>
				<td></td>
			</tr>
			<tr>
				<td>Exercise (more likely to happen if it’s an appointment!)</td>
				<td>Clean refrigerator (throw out old food, clean shelves, clean outside)</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>Scrub counters & sink</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>Wipe down cabinets</td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td>Wipe down top of refrigerator and other appliances</td>
				<td></td>
			</tr>

		</table>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = cc.screens.create seq: seq, content: <<-END
		<p>
			<strong>This will be a checkbox form and should be easily accessible (like a bookmark).</strong>
			That’s the end of Module 2, on calendar use and to-do lists. For home practice, be sure to practice these skills. (Add any home practice activities that were unchecked from the previous week.)
			<ul>
				<li>Practice checking your calendar every day by using alarms, linking tasks, or automatic places.</li>
				<li>Have a planning session with your calendar to help you get things organized for the coming week.</li>
				<li>Continue to work on your to do list, making sure to transfer any items that can be assigned specific dates to your calendar. </li>
			</ul>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		ccc = Category.create name: 'Prospective Memory'

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			How did your home practice go? Remember to check off the home practice activities you did. You said that you would be willing to try (setting alarms, linking tasks, and automatic places) (and) (to do lists). If you had any trouble, review Module 2 and see if you can make improvements. 
		</p>
		<p>
			You said that you were going to keep your calendar (place they named in Module 2). How is that working for you? Are you carrying your calendar with you and checking it every day?
		</p>
		<p>
			If Y, Great! Keep using your calendar to stay on top of your schedule.) (If N, Maybe it would help to choose a different place to keep your calendar. Remember to choose a place where you’ll see it regularly. If you need to check the calendar more often, try setting alarms or linking calendar checking with another automatic activity. For review, see Module 2.)
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			<strong>Module 3. Short-term Prospective Memory</strong> 
		</p>
		<p>
			By now, we hope that you’re carrying your calendar with you every day, checking it daily (or several times of day, if needed), and having a weekly planning session to help you plan for the week ahead. Your calendar can help remind you to put things on your to do list, and your to do list can help remind you to put tasks in your calendar. If you’re having any trouble with these strategies, please review Modules 1 and 2.
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			Now let’s review some short-term prospective memory strategies.  
		</p>
		<p>
			It’s not always feasible to use your calendar to remember everything. Short-term situations call for different strategies.		
		</p>
		<p>
			Here’s one: write things down on your hand. Examples: “Call Katy,” “Mail rent check,” “Get milk”.
		</p>
		<p>
			This strategy works well because you’re likely to see the reminder.
		</p>
		<p>
			QUIZ: Will you try writing on your hand?
		</p>
		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			For people who use voicemail, answering machines, email, or texting, here’s another strategy: leave yourself a message or send yourself an email or text.		
		</p>
		<p>
			This strategy also works well because you’re likely to see the reminder.		
		</p>
		<p>
			QUIZ: Will you try leaving yourself a message or sending yourself an email or text?
		</p>
		
		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			Here’s another short-term prospective memory strategy. Set an alarm. It can be an old-fashioned kitchen timer, or a timer on your stove, microwave, watch, smart phone, or tablet. Chances are, when the alarm goes off, you will remember what you needed to do. If you regularly use a smart device, you can make this method totally foolproof by setting a reminder in your device. Most smart devices allow you to say your reminder out loud (e.g., “Remind me to turn off the oven in 20 minutes”).
		</p>
		
		<p>
			QUIZ: Will you try using an alarm or smart device reminder?
		</p>
		
		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		
		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			Another low-tech method for improving short-term prospective memory is to talk to yourself about the consequences of forgetting. Take some time and think about what would happen if you forgot to complete your task, then say them out loud.
		</p>

		<p>
			Examples:
			<ul>
				<li>“If I don’t call Violet when I get home, she’ll think I forgot her birthday, and I would feel awful if that happened.”</li>
				<li>“If I don’t mail that bill when I leave, my payment might be late and I might get a late charge.”</li>
				<li>“If I don’t get pet food on the way home, Fluffy will be hungry and I’ll just have to go out later.”</li>
			</ul>
			Remember, you’re more likely to remember if you talk about the consequences of forgetting OUT LOUD.
		</p>
		
		<p>
			QUIZ: Is talking to yourself about the consequences of forgetting something you’ll try?
		</p>
		
		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			OK, we’ve got one more low-tech short-term prospective memory strategy for you: Can’t Miss Reminders. These are reminders that you can’t miss seeing. For example: Items you need to take with you when you leave the house can be placed by the door or hanging in a bag on the front doorknob. A sticky note on your bathroom mirror is also hard to miss.
		</p>
		
		<p>
			QUIZ: Are can’t miss reminders something you’ll try?
		</p>
		
		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			VIDEO summarizing short-term prospective memory strategies.
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			Now we’ve gone over strategies to help you get organized and strategies to improve long-term and short-term prospective memory. Take a moment to think about the following strategies: (make this a checklist with 3 columns: strategies in the middle, and checkboxes on the left and right for “Already using” and “Want to try”)
			<ul>
				<li>A home for your stuff</li>
				<li>Calendar use</li>
				<li>Linking tasks, automatic places, or alarms to remember to check your calendar</li>
				<li>To do lists</li>
			</ul>
			Short-term prospective memory strategies:
				<ul>
					<li>Writing on your hand</li>
					<li>Leaving yourself a voicemail / email / text</li>
					<li>Alarms or smart device reminders</li>
					<li>Visual imagery</li>
					<li>Talking to yourself about the consequences of forgetting</li>
					<li>Can’t miss reminders</li>
				</ul>
			Check off the strategies you’re already using and those you want to try. 
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			Now, think back to the goals you wrote down in Module 1. How can the organization and prospective memory strategies you just reviewed help you reach your goals? Take a moment to write down your thoughts:
		</p>
		<p>
			Text-input
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = ccc.screens.create seq: seq, content: <<-END
		<p>
			<strong>This will be a checkbox form and should be easily accessible (like a bookmark).</strong>
		</p>
		<p>
			That’s the end of Module 3, on short-term prospective memory strategies. For home practice, be sure to practice these skills. (Add any home practice activities that were unchecked from the previous week.)
			<ul>
				<li>Continue to practice checking your calendar every day and have your weekly calendar planning session.</li>
				<li>Practice at least two of the short-term prospective memory strategies (writing on your hand, leaving yourself a voicemail / email / text, alarms / smart reminders, visual imagery, talking to yourself about the consequences of forgetting, and can’t miss reminders).</li>
			</ul>		
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1


	end
end



