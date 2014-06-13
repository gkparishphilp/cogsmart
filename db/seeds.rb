

u = User.create( name: 'beth', email: 'etwamley@ucsd.edu', password: 'c0gsm@rt' )

r = Role.create name: 'admin'
u.roles << r

# cct manuals
Resource.create name: 'Compensatory Cognitive Training Manual Client Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Compensatory+Cognitive+Training+Manual+Client+Version+October+2011.pdf', require_email: true
Resource.create name: 'Compensatory Cognitive Training Manual Therapist Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Compensatory+Cognitive+Training+Manual+Therapist+Version+October+2011.pdf', require_email: true
Resource.create name: 'Spanish Compensatory Cognitive Training Manual Client Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Spanish+Compensatory+Cognitive+Training+Manual+Client+Version+September+2012.pdf', language: 'Spanish', require_email: true
Resource.create name: 'Spanish Compensatory Cognitive Training Manual Therapist Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Spanish+Compensatory+Cognitive+Training+Manual+Therapist+Version+September+2012.pdf', language: 'Spanish', require_email: true


# tbi = Brain Injury Manuals
Resource.create name: 'CogSMART for TBI Manual', category: 'tbi', path: 'https://s3.amazonaws.com/cogsmart/CogSMART+for+TBI+Manual+September+2010.pdf', require_email: true
Resource.create name: 'Compensatory Cognitive Training Participant Manual', category: 'tbi', path: 'https://s3.amazonaws.com/cogsmart/Compensatory+Cognitive+Training+participant+manual+June+2013.pdf', require_email: true
Resource.create name: 'Compensatory Cognitive Training Facilitator Manual', category: 'tbi', path: 'https://s3.amazonaws.com/cogsmart/Compensatory+Cognitive+Training+facilitator+manual+June+2013.pdf', require_email: true
Resource.create name: 'TBI guide for patients', category: 'tbi', path: 'https://s3.amazonaws.com/cogsmart/TBI+guide+for+patients.pdf'
Resource.create name: 'What is PTSD', category: 'tbi', path: 'https://s3.amazonaws.com/cogsmart/What+is+PTSD.pdf'


# addtnl Materials
Resource.create name: '6 step problem solving worksheet', category: 'additional', path: 'https://s3.amazonaws.com/cogsmart/6+step+problem+solving+worksheet.pdf'
Resource.create name: 'Planning to meet goals and deadlines worksheet', category: 'additional', path: 'https://s3.amazonaws.com/cogsmart/Planning+to+meet+goals+and+deadlines+worksheet.pdf'
Resource.create name: 'CogSMART Feedback Form', category: 'additional', path: 'https://s3.amazonaws.com/cogsmart/CogSMART+Feedback+Form.pdf'




c=Category.create name: 'Prospective Memory'

c.questions.create content: <<-END
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