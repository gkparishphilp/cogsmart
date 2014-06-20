
desc "Loader"

namespace :screens do
	task load: :environment do

		seq = 1

		#####################################################################################
		# => Module 1                                                             
		#####################################################################################
		c = Category.create name: 'Prospective Memory'

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

		########################################################################################
		# => Module 2
		########################################################################################

		c = Category.create name: 'Prospective Memory continued'

		s = c.screens.create seq: seq, content: <<-END
		<p>
			How did your home practice go? 
			Remember to check off the home practice activities you did. 
			You said that you would be willing to try (making a home for your stuff) (and) (calendar use). 
			If you had any trouble, review Module 1 and see if you can make improvements.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
		<p>
			First, let’s go back to thinking about calendar use, which was introduced in Module 1. Plan to check your calendar 1-3 times every day (or more if you are busy or tend to forget things.) Remember to have it with you always. How are you going to remember to check your calendar? 
		</p>
		
		<p>
			If you’re using an electronic calendar or smart device, you might want to set alarms or reminders to check your calendar. Take a moment to set those alarms now. If you’re not using an electronic calendar or smart device, not to worry, we’ve got you covered.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			One of the easiest ways to establish a new habit (like checking your calendar) is to link that new behavior to something you already do. We call this “linking tasks.” This strategy will help you remember to check your calendar, but it is useful for remembering to do other tasks, too, like take medications.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Will you try the linking tasks strategy?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
		<p>
			VIDEO: Setting alarms, Linking tasks, Automatic places.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Will you try setting an alarm, linking tasks, or automatic places to remember to check your calendar?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already use one of these to remember to check calendar and track.", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Now we’re going to talk about “to do” lists. Things that need to get done on a certain day should go in your calendar for that day. Other to do items should go on your to do list.	
		</p>
		<p>
			After coming up with a big list of things you want to do, it is helpful to decide whether each item needs to be done immediately, or if it can wait until you have more time to do it. This helps make the to do list less overwhelming. One way to prioritize your to do list is to divide the items up into three different categories.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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
				<td>...</td>
				<td>...</td>
				<td>...</td>
			</tr>
			<tr>
				<td>...</td>
				<td>..</td>
				<td>..</td>
			</tr>
			<tr>
				<td>...</td>
				<td>...</td>
				<td>...</td>
			</tr>
			<tr>
				<td>...</td>
				<td>...</td>
				<td>...</td>
			</tr>

		</table>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Are to do lists something you’re willing to try?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Can you assign dates to any of your to do items? If so, you can transfer those into your calendar. Go ahead and take a moment to do that now.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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
				<td>...</td>
			</tr>
			<tr>
				<td>Exercise (more likely to happen if it’s an appointment!)</td>
				<td>Clean refrigerator (throw out old food, clean shelves, clean outside)</td>
				<td>...</td>
			</tr>
			<tr>
				<td>...</td>
				<td>Scrub counters & sink</td>
				<td>...</td>
			</tr>
			<tr>
				<td>...</td>
				<td>Wipe down cabinets</td>
				<td>...</td>
			</tr>
			<tr>
				<td>...</td>
				<td>Wipe down top of refrigerator and other appliances</td>
				<td>...</td>
			</tr>

		</table>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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

		########################################################################################
		# => Module 3
		########################################################################################


		c = Category.create name: 'Short-term Prospective Memory'

		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
		<p>
			<strong>Module 3. Short-term Prospective Memory</strong> 
		</p>
		<p>
			By now, we hope that you’re carrying your calendar with you every day, checking it daily (or several times of day, if needed), and having a weekly planning session to help you plan for the week ahead. Your calendar can help remind you to put things on your to do list, and your to do list can help remind you to put tasks in your calendar. If you’re having any trouble with these strategies, please review Modules 1 and 2.
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
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

		
		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
		<p>
			VIDEO summarizing short-term prospective memory strategies.
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Now, think back to the goals you wrote down in Module 1. How can the organization and prospective memory strategies you just reviewed help you reach your goals? Take a moment to write down your thoughts:
		</p>
		<p>
			Text-input
		</p>
		
		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
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

		#########################################################################################
		# => Module 3
		#########################################################################################

		c = Category.create name: 'Conversational Attention'

		s = c.screens.create seq: seq, content: <<-END
		<p>
			How did your home practice go? Remember to check off the home practice activities you did. You said that you would be willing to try (list of strategies from Module 3 they said they would try). If you had any trouble, review Module 3 and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in Module 2.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			<strong>Module 4. Conversational Attention.</strong>
		</p>

		<p>
			Now we’re going to switch gears and start introducing strategies to help with attention and concentration. First, we’ll focus on conversational attention. Being able to pay attention during conversations is the key to understanding and remembering information that you need. Paying attention during conversations can also help reduce friction with bosses, teachers, friends, and romantic partners. These four strategies can help.
			<ol>
				<li><strong>L</strong>isten Actively</li>
				<li><strong>E</strong>liminate Distractions</li>
				<li><strong>A</strong>sk Questions</li>
				<li><strong>P</strong>araphrase</li>
			</ol>
			Look at the acronym these four strategies form: LEAP. You can use this acronym to help yourself “LEAP into conversations.”
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			First, Listen actively.<br/>
			Use nonverbal behaviors to convey that you’re listening.
			<ul>
				<li>Turn toward the speaker</li>
				<li>Open your posture, relax, avoid “closed” body language</li>
				<li>Lean toward the speaker</li>
				<li>Maintain adequate eye contact (hint: if eye contact makes you uncomfortable, look at the person’s nose instead. They’ll never know!)</li>
			</ul>
			Your conversation partner will really appreciate that you’re listening actively, and you will be more able to give your full attention to the conversation.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Second, Eliminate distractions.<br/>
			What sorts of distractions affect your conversations? Phones? Kids? TV? Pets? How can you reduce these distractions? Turn phones, music, TV off? Go into a quieter room? 
			<br/>
			Reducing these distractions helps you devote your full attention to the conversation, which will help you remember it better later on. Your conversation partner will appreciate having your undivided attention.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Third, Ask questions.<br/>
			<ul>
				<li>Ask questions for clarification.</li>
				<li>Ask the speaker to slow down, repeat information, or explain something in a different way.</li>
			</ul>
			Asking questions communicates interest and conveys that what your conversation partner has to say is important to you. It also makes you pay attention better, which will help you remember the conversation later.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Finally, Paraphrase.<br/>
			<ul>
				<li>Repeat information back in your own words.</li>
			</ul>
			Paraphrasing helps ensure that you’ve heard correctly and understand; it also gives the speaker a chance to correct any misunderstandings. Paraphrasing helps you understand, pay attention to, and remember the information later.		
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			VIDEO: Here’s an example of how paraphrasing and asking questions can help you pay attention during conversations.
		</p>
		<table>
			<tr>
				<th>Doctor says:</th>
				<th>You paraphrase:</th>
			</tr>
			<tr>
				<td>“I’ve been looking over your records, and I’m a little concerned about your cholesterol level. It’s been high in the past – it was over 230 back in August of last year. It’s 205 right now, but your goal should be to get it down to 200 or below. Sometimes we prescribe medication to lower cholesterol, but in your case, I think you can take some steps to lower it without medication. Be sure to limit your dietary fats, including meats, eggs, butter, cheese, and ice cream. Exercising three times a week should also help lower your cholesterol. I want to keep a close eye on it, so let’s continue to check it every six months to see how you’re doing.”</td>
				<td>“Okay, let me make sure I understand you. My cholesterol is a little high right now, but if I cut back on the eggs, butter, and fatty foods, and if I exercise three times a week, I can lower it without taking any medication. We’ll check it in six months and see how I did. Does that sound right?”</td>
			</tr>
		</table>

		<p>
			If the doctor was speaking too quickly, you may need to ask for repetition, or you may have to ask the doctor to slow down. You could say, “That was a lot of information, and I want to be sure I heard you right. Could you tell me again what I shouldn’t eat, and could you say it a little more slowly?”
		</p>	

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Will you try using the LEAP strategies to improve your attention during conversations?
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			<strong>This will be a checkbox form and should be easily accessible (like a bookmark).</strong><br/>
			That’s the end of Module 4, on conversational attention strategies. For home practice, be sure to practice these skills. (Add any home practice activities that were unchecked from the previous week.)
			<ul>
				<li>Continue to practice checking your calendar every day and have your weekly calendar planning session.</li>
			</ul>
			Practice conversational attention skills (LEAP!): Listen actively, Eliminate distractions, Ask questions, and Paraphrase.<br/>
			Try using these skills with people you know well and people you don’t know very well. If you need ideas for how to start a conversation, here are some sample conversation starters:
			<ul>
				<li>What was the worst weather you’ve ever experienced?</li>
				<li>What’s your favorite movie of all time?</li>
				<li>The most important thing I learned in the past year was...</li>
				<li>What are some of the TV shows you’re watching right now?</li>
				<li>Tell me about the last time you went out of town.</li>
				<li>My favorite part of the city (or country) is…</li>
			</ul> 
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		########################################################################################
		# => Module 5
		########################################################################################

		c = Category.create name: 'Paying Attention during Tasks'

		s = c.screens.create seq: seq, content: <<-END
		<p>
			How did your home practice go? Remember to check off the home practice activities you did. You said that you would be willing to try (list of strategies from Module 4 they said they would try). If you had any trouble, review Module 4 and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in Module 2.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			<strong>Module 5. Paying Attention during Tasks</strong><br/>
			In Module 4, we reviewed strategies for paying attention during conversations (LEAP). These strategies will help you become a more active participant in your conversations, and will help you focus on the conversation. Of course, the more you concentrate on the conversation, the better you’ll remember it later. Many people notice that using the LEAP strategies during conversations improves their relationships with colleagues, friends, and romantic partners.
		</p>
		<p>
			In this module, we’ll focus on strategies to help you pay attention during tasks. When someone else is giving you a task to do, you want to make sure you understand the task completely. Use your LEAP skills (especially asking questions and paraphrasing) to make sure you understand the task.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			VIDEO: You’re at home and your roommate reminds you that it’s your turn to clean the kitchen today. She tells you that <strong>“the dishwasher needs unloading, there are dishes in the sink, the floor’s a mess, and the pizza that you baked last night leaked melted cheese all over the bottom of the oven.” She says she also “noticed a couple of yogurt containers of yours in the refrigerator that are past their expiration date.”</strong> 
			<ul>
				<li>To make sure you heard and understood everything, you want to paraphrase back something like this: <strong>“Let me make sure I got everything you said: dishes, floor, oven, and yogurt?”</stong> Notice how simple you can make the task by identifying the four main parts. Notice how you’re reducing “information overload” by focusing just on the four main parts. Again, this is simple paraphrasing, just like we’ve been practicing for conversational attention.</li>
			</ul>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			While you’re working on a task, we highly recommend a strategy called “self-talk.” This just means talking to yourself out loud about what you’re doing. If your task has different steps, you can repeat the steps of the activity out loud to yourself as you complete them. Talk to yourself about the progress you’re making, and what parts of the task are coming up next.
		</p>
		<p>
			Using self-talk will help keep you focused on the task at hand. You will be less likely to be distracted by internal thoughts or external events. Using self-talk will also help you remember completing the task. It might feel a little funny at first to be talking to yourself while you complete a task, but the more you practice, the better it works and the more naturally it will come to you.
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Self-talk is a great strategy to maintain focus on complex, sequential tasks like cooking a meal, assembling a piece of furniture, or trouble-shooting a computer problem. 
		</p>

		<p>
			Self-talk also works well for very brief, simple tasks. Have you ever asked yourself,<br/>
			“Did I take my medication this morning?”<br/> 
			“Did I turn off the iron?” <br/>
			“Did I close the garage door?” <br/>
			Tell yourself out loud, <br/>
			“It’s Friday morning, and I’m taking my morning pills”<br/>
			“I’m turning off the iron, so I don’t have to worry about burning down the house!”<br/>
			“It’s Tuesday, and I’m closing the garage door as I leave”<br/>
			Saying these things out loud as you do them will help you remember that you’ve done them.<br/>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			VIDEO:  “dishes, floor, oven, yogurt” continued.
			<ul>
				<li>Talk to yourself about your progress.</li>
				<li>Helps you remember completing the task. </li>
			</ul>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			VIDEO: Here’s a task that helps demonstrate what a useful strategy self-talk is.
		</p>
		<p>
			Watch as I do this sequence of moves, then, you start to mirror my moves without saying anything.<br/> 
			I’m stopping, but you keep going.<br/>
			Difficult?<br/>
			OK, now try it with self-talk. Fist, edge, palm… fist, edge, palm.<br/>
			I’m stopping, but you keep going. Keep using self-talk.<br/>
			Was that easier?<br/>
			Notice how talking to yourself about what you’re doing can make tasks easier and more automatic.<br/>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Are you willing to try self-talk during tasks?
		</p>
		<p>
			What kind of tasks in your life could benefit from adding self-talk?(boxes they can write in)
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Another strategy to improve your focus and concentration during tasks, especially longer tasks, is to take breaks. <br/>
			Concentrating on a task for a long time can be tiring, so it’s important to take small breaks in between tasks or in between parts of tasks, to keep your energy and concentration up. Only you can decide when you need to take a break and how long it needs to be. Here are a few things you can do for a brief break:
			<ul>
				<li>30 seconds of neck stretches</li>
				<li>30 seconds of walking around</li>
				<li>Give yourself a neck rub</li>
				<li>Close your eyes and count to 30</li>
				<li>Point and flex your feet</li>
				<li>Rest your head on your knees</li>
				<li>Look at cloud formations</li>
				<li>Shake out your hands</li>
				<li>Drink some water</li>
			</ul>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			If you need a longer break, you might:
			<ul>
				<li>Go for a walk</li>
				<li>Take a catnap</li>
				<li>Play a game</li>
				<li>Check email</li>
				<li>Do a few chores around the house</li>
				<li>Watch a TV show</li>	
			</ul>
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			QUIZ: Are you willing to take breaks as a way of improving your task attention?
		</p>
		<p>
			What are YOUR favorite brief breaks?<br/>
			(boxes they can write in)
		</p>
		<p>
			What are your favorite longer breaks?<br/>
			(boxes they can write in)
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'
		p = s.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Now it’s time to put self-talk and taking breaks into action. You will see a series of scenarios. Each one has multiple steps, and your task is to indicate whether the steps are in the correct order. Some are in the correct order and some are not. Use self-talk to talk your way through each scenario, and take a brief break if you get tired.  (Each of these will be a separate screen)
		</p>

		END

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Watering the yard</strong>
			<ol>
				<li>Turn on hose</li>
				<li>Spray water on grass</li>
				<li>Turn off hose</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to work in the morning</strong>
			<ol>
				<li>Wake up</li>
				<li>Get dressed </li>
				<li>Take shower</li>
				<li>Drive to work</li>
				<li>Leave house</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Cleaning the windows</strong>
			<ol>
				<li>Wipe windows with paper towel</li>
				<li>Get out window cleaner</li>
				<li>Spray window cleaner on windows</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Toasting bread</strong>
			<ol>
				<li>Take bread out of bag</li>
				<li>Place inside toaster</li>
				<li>Lower lever</li>
				<li>Wait for toast</li>
				<li>Remove toast</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Getting a haircut</strong>
			<ol>
				<li>Sit in chair</li>
				<li>Go to barbershop</li>
				<li>Get haircut</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Buying a new car </strong>
			<ol>
				<li>Take a test drive</li>
				<li>Choose the car</li>
				<li>Go to dealership</li>
				<li>Buy the car</li>
				<li>Negotiate price</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Making cereal</strong>
			<ol>
				<li>Get bowl</li>
				<li>Add cereal</li>
				<li>Pour milk over cereal</li>
				<li>Eat with spoon</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going on a road trip</strong>
			<ol>
				<li>Pack bags</li>
				<li>Put bags in car</li>
				<li>Drive to destination</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Washing your car</strong>
			<ol>
				<li>Put soapy water on car</li>
				<li>Fill bucket with soap and water</li>
				<li>Dry car</li>
				<li>Hose off car</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Hanging a picture</strong>
			<ol>
				<li>Select place for picture</li>
				<li>Hammer nail into wall</li>
				<li>Hang picture on wall</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to get coffee</strong>
			<ol>
				<li>Order coffee</li>
				<li>Pay for coffee</li>
				<li>Go to coffee shop</li>
				<li>Drink the coffee</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Washing your face</strong>
			<ol>
				<li>Rub soap onto face</li>
				<li>Rinse off soap</li>
				<li>Dry face with towel</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Ironing a shirt</strong>
			<ol>
				<li>Place shirt on ironing board</li>
				<li>Turn off iron</li>
				<li>Move hot iron on shirt </li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Washing Clothes</strong>
			<ol>
				<li>Put clothes in washing machine</li>
				<li>Shut door</li>
				<li>Press start</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Drying Clothes</strong>
			<ol>
				<li>Place wet clothes in dryer</li>
				<li>Shut door</li>
				<li>Press start</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Making tea</strong>
			<ol>
				<li>Boil water</li>
				<li>Pour hot water over tea bag</li>
				<li>Let tea brew</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Washing your hair</strong>
			<ol>
				<li>Get in shower</li>
				<li>Put shampoo in hands</li>
				<li>Rinse off shampoo</li>
				<li>Rub into hair</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Ordering a pizza</strong>
			<ol>
				<li>Call pizza place</li>
				<li>Place your order</li>
				<li>Find pizza delivery number</li>
				<li>Wait for pizza to arrive</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Changing a light bulb</strong>
			<ol>
				<li>Make sure light switch is off</li>
				<li>Screw in new light bulb</li>
				<li>Unscrew old light bulb</li>
				<li>Test new light bulb</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Paying a bill</strong>
			<ol>
				<li>Write check for amount owed</li>
				<li>Seal envelope</li>
				<li>Place envelope in mailbox</li>
				<li>Put check in envelope</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Making a pizza</strong>
			<ol>
				<li>Spread sauce on pizza dough</li>
				<li>Add toppings</li>
				<li>Bake pizza in oven</li>
				<li>Turn off oven when done</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to the zoo</strong>
			<ol>
				<li>Go to zoo</li>
				<li>Buy a ticket</li>
				<li>Look at animals</li>
				<li>Go home</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Baking cookies</strong>
			<ol>
				<li>Select recipe</li>
				<li>Make batter</li>
				<li>Bake in oven</li>
				<li>Get ingredients</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Calling information</strong>
			<ol>
				<li>Pick up phone</li>
				<li>Dial 411</li>
				<li>State name of person</li>
				<li>Write down number</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Looking up a telephone number in the phone book</strong>
			<ol>
				<li>Get phone book</li>
				<li>Turn pages to find listing</li>
				<li>Call number</li>
				<li>Write down number</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Mowing the lawn</strong>
			<ol>
				<li>Get out lawnmower</li>
				<li>Guide mower over lawn</li>
				<li>Pull cord to start mower</li>
				<li>Empty bag of cut grass</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Filling a prescription</strong>
			<ol>
				<li>Wait for prescription</li>
				<li>Give prescription to pharmacist</li>
				<li>Go to pharmacy</li>
				<li>Pay for prescription</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Buying new shoes</strong>
			<ol>
				<li>Go to shoe store</li>
				<li>Select shoes to try on</li>
				<li>Choose a pair to buy</li>
				<li>Pay for shoes</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Renting a movie</strong>
			<ol>
				<li>Go to video rental store</li>
				<li>Select a movie</li>
				<li>Take movie to register</li>
				<li>Pay for movie</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Doing the dishes</strong>
			<ol>
				<li>Put dishes in dishwasher</li>
				<li>Close dishwasher door</li>
				<li>Add detergent </li>
				<li>Press Start</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Washing your hands</strong>
			<ol>
				<li>Put soap in hands</li>
				<li>Rub hands to make lather</li>
				<li>Rinse off soap</li>
				<li>Dry hands</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Calling a friend</strong>
			<ol>
				<li>Pick up receiver</li>
				<li>Dial phone number</li>
				<li>Wait until friend answers</li>
				<li>Say hello</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Setting an alarm clock</strong>
			<ol>
				<li>Set alarm time on the clock</li>
				<li>Decide when you want to get up</li>
				<li>Switch button to alarm on</li>
				<li>Go to sleep</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Making a sandwich</strong>
			<ol>
				<li>Put two slices of bread on plate</li>
				<li>Place toppings on one slice</li>
				<li>Cover with other slice</li>
				<li>Eat sandwich</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Painting a room</strong>
			<ol>
				<li>Select color</li>
				<li>Buy paint</li>
				<li>Paint walls</li>
				<li>Let paint dry</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Brushing your teeth</strong>
			<ol>
				<li>Rinse mouth out</li>
				<li>Get toothbrush</li>
				<li>Squeeze toothpaste</li>
				<li>Brush your teeth</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to the movies</strong>
			<ol>
				<li>Go to theater</li>
				<li>Pay for tickets</li>
				<li>Buy snacks</li>
				<li>Watch the movie</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to a restaurant</strong>
			<ol>
				<li>Order your meal</li>
				<li>Look at menu</li>
				<li>Go to restaurant</li>
				<li>Eat your food</li>
				<li>Pay the bill</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Writing a letter</strong>
			<ol>
				<li>Get paper</li>
				<li>Write letter</li>
				<li>Sign letter</li>
				<li>Drop in mailbox</li>
				<li>Drop in mailbox</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Planning a party</strong>
			<ol>
				<li>Schedule party</li>
				<li>Buy invitations</li>
				<li>Send invitations</li>
				<li>Prepare food</li>
				<li>Welcome guests</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to a basketball game</strong>
			<ol>
				<li>Drive to arena</li>
				<li>Park the car</li>
				<li>Enter arena</li>
				<li>Find seats</li>
				<li>Watch the game</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to the beach</strong>
			<ol>
				<li>Pack beach bag</li>
				<li>Set up umbrella</li>
				<li>Drive to beach</li>
				<li>Apply sunscreen</li>
				<li>Drive back home</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Grocery shopping</strong>
			<ol>
				<li>Arrive at store</li>
				<li>Select items</li>
				<li>Get a cart</li>
				<li>Pay for items</li>
				<li>Load items in car</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Borrowing a library book</strong>
			<ol>
				<li>Go to library</li>
				<li>Find book listing</li>
				<li>Locate book</li>
				<li>Check out book</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Taking an exam</strong>
			<ol>
				<li>Go to exam site</li>
				<li>Study notes</li>
				<li>Take the exam</li>
				<li>Hand in exam</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going to the doctor</strong>
			<ol>
				<li>Make appointment</li>
				<li>Go to office</li>
				<li>Check in and pay</li>
				<li>Wait in lobby</li>
				<li>See the doctor</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1

		s = c.screens.create seq: seq, content: <<-END
		<p>
			Are these steps in the correct order? Mark “Yes” or “No.”
		</p>
		<p>
			<strong>Going for ice cream</strong>
			<ol>
				<li>Go to ice cream shop</li>
				<li>Choose ice cream flavor</li>
				<li>Pay for ice cream</li>
				<li>Eat the ice cream</li>
				<li>Leave ice cream shop</li>
			</ol>
		</p>

		END

		p = s.prompts.create content: "Yes", prompt_type: 'radio'
		p = s.prompts.create content: "No", prompt_type: 'radio'

		puts "Saved screen #{seq}"
		seq += 1
	end
end



