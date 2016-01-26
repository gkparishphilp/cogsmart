
desc "Loader"

namespace :screens do

  task load: :environment do

    Category.delete_all
    Screen.delete_all
    Question.delete_all
    Prompt.delete_all
    Response.delete_all
    Surveying.delete_all
    Bookmark.delete_all
    Strategy.delete_all
    Task.delete_all
    TimedTrial.delete_all
    
    seq = 1

    #####################################################################################
    # => Module 1
    #####################################################################################
    c = Category.create name: 'Module 1: Introduction to CogSMART, Getting Organized, and Prospective Memory'

    s = c.screens.create seq: seq, content: <<-END
    <center>
      <h2>Module 1: Introduction to CogSMART, Getting Organized, and Prospective Memory</h2>
      </center>
    END

    seq += 1

    s = c.screens.create seq: seq, content: <<-END
      <h1>Welcome to CogSMART!</h1>
      <p>
        CogSMART stands for Cognitive Symptom Management and Rehabilitation Therapy. CogSMART was designed to provide you with skills, strategies, and tools to improve your attention, concentration, learning, memory, organization, and problem-solving. These skills, strategies, and tools have been used successfully both by healthy people and by people with cognitive impairments.
      </p>
      <p>
        Some of these skills, strategies, and tools may be familiar to you, and some may be new.
      </p>
      <p>
        Give these approaches a try in your everyday life, and try to make these strategies into habits, so you can use them automatically when you need to. The more you practice, the more automatic your new skills will become. We recommend completing 1 or 2 modules per week. This will give you enough time to practice your skills between modules.
      </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <h1>Welcome to CogSMART!</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/8yeS-_GYhks" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>
    END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq, content: <<-END
      <p>
        Everyone experiences cognitive problems – that is, problems with attention, memory, problem-solving, and so on – once in a while. Some people, for example, those who have had a traumatic brain injury, neurological illness/injury, or psychiatric illness, experience cognitive problems more frequently. The goal of CogSMART is to help people with cognitive impairments learn ways to work around those problems and function more effectively. Many of the skills we recommend are used daily by successful people. The more you practice these skills, the more they will become automatic to you, and the more helpful they will be.
      </p>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, module_path: '/game/intro'


    # game page 5, 6, 7

    puts "Saved screen #{seq}"
    seq = 8

    s = c.screens.create seq: seq
    q=s.questions.create name: 'difficulties', content: <<-END
      <p>
        Cognitive problems vary from person to person, but often include difficulties with the following activities:
      </p>
      <p>
        Click the box next to any of the issues above that are a problem for you
      </p>

    END
    q.prompts.create prompt_type: 'checkbox', content: 'Remembering to do things in the future'
    q.prompts.create prompt_type: 'checkbox', content: "“Filtering out” things you don’t need to pay attention to; being able to focus on the task at hand"
    q.prompts.create prompt_type: 'checkbox', content: "Sustaining attention and concentration without getting distracted by things going on in the environment or other thoughts inside your head"
    q.prompts.create prompt_type: 'checkbox', content: "Learning new information and remembering it"
    q.prompts.create prompt_type: 'checkbox', content: "Problem-solving in a logical way"
    q.prompts.create prompt_type: 'checkbox', content: "Flexibility in thinking style; being able to “switch gears” when necessary so that thinking doesn’t get stuck in a rut"

    puts "Saved screen #{seq}"
    puts "Saved question: #{q.name}"

    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>Good work identifying some problems to work on. The CogSMART app will definitely address these issues.</p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create question_type: 'text_field', name: 'life_areas_affected', content: <<-END
      <p>
        Now, think about the problems you just identified. What domains of your life are affected by these problems? For example, these problems might affect your work or school, your relationships with other people, or your ability to manage your affairs and be independent.
      </p>
      <p>
        What areas of your life are affected the most?
      </p>
    END
    p = q.prompts.create prompt_type: 'text_field'
    p = q.prompts.create prompt_type: 'text_field'
    p = q.prompts.create prompt_type: 'text_field'



    puts "Saved screen #{seq}"
    puts "Saved question: #{q.name}"
    seq += 1

    s = c.screens.create seq: seq

    q=s.questions.create name: 'top_goals', content: <<-END
      <p>
        Optimists say that problems are opportunities for improvement. What are your three top goals in the next few months or years? If you’re not sure what your goals are, think about ways you might be dissatisfied with your living situation, work or school, relationships, finances, or health. Then turn that dissatisfaction into a goal for improvement.
      </p>
    END
    p = q.prompts.create prompt_type: 'text_field'
    p = q.prompts.create prompt_type: 'text_field'
    p = q.prompts.create prompt_type: 'text_field'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq, content: <<-END
      <p>
        Great, good work identifying some goals to work on. CogSMART strategies can help people work toward many different types of goals. Using skills to improve attention, concentration, learning, memory, and problem-solving can help performance at work and school, and can help social relationships.
      </p>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
      <p>
        <h1>CogSMART Domains and Life Goals</h1>
      </p>
      <p>
        <center>
          <iframe width="560" height="315" src="https://www.youtube.com/embed/PuKH2Hg_XeA" frameborder="0" allowfullscreen></iframe>
        </center>
      </p>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
      <p>
        OK, now that you’ve identified some cognitive problems and goals you’d like to work on, let’s get started. One of the best things you can do for your overall thinking skills is to be organized. If your environment is organized, your daily tasks will be less cognitively demanding and you’ll be less likely to lose things. The first strategy is to make a “home for your stuff.”
      </p>
      <ol>
        <li>This means choosing a container (it could be a large bowl, a box, or a backpack or messenger bag) and beginning to store all your important personal items in this container.  All the stuff you carry with you daily should fit in there, for example, your calendar, keys, wallet, glasses, and cell phone.</li>
        <li>Decide where the container will be kept in your home (for example, on a table near the front door, or on a desk or chair). It should be a convenient location that you will easily get into the habit of using every time you enter your home.</li>
        <li>Start using this home for your stuff every day.</li>
      </ol>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
      <p>
        <h1>A Home for your Stuff</h1>
        <h4>“A place for everything, and everything in its place.”</h4>
      </p>
      <p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/kbW2Sj3356c" frameborder="0" allowfullscreen></iframe>
      </center>
      </p>
    END

    puts "Saved screen #{seq}"
    seq += 1



    s = c.screens.create seq: seq
    q = s.questions.create name: 'will_you_make_home_for_stuff', content: <<-END
      <p>
        Will you try making a home for your stuff?
      </p>
    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    puts "Saved question: #{q.name}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <h2>Prospective Memory</h2>
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

    <h4>What type of calendar will work for you? Paper or electronic?</h4>
    <ul>
      <li>Choose a calendar you’re willing to carry with you at all times.
      <li>You’ll be checking your calendar at least once a day, and you’ll have a planning session for the week ahead at least once a week.
      <li>If you choose a paper calendar, think about pocket size vs. a larger format. Balance convenience with how much space you need to write. Paper calendars of different sizes are available at grocery stores, dollar stores, etc.
      <li>If electronic, what system will you use?
    </ul>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>Calendar Use</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="//www.youtube.com/embed/maL7sNQOHXw" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'will_use_calendar', content: <<-END
    <p>
      Will you try using a calendar regularly?
    </p>
    END


    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question: #{q.name}"
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

    s = c.screens.create seq: seq
    q = s.questions.create name: 'end_module_1', content: <<-END

    <p>
      That’s the end of Module 1, on organization, prospective memory, and calendar use. For home practice, be sure to practice these skills. Check them off once you’ve completed the home practice activities.
    </p>
    END
    q.prompts.create prompt_type: 'checkbox', content: "Use a calendar. <b>Carry your calendar with you every day</b>. Enter all the upcoming events you know about, be sure to schedule time to work on CogSMART, and also enter routine events and activities you should do."
    q.prompts.create prompt_type: 'checkbox', content: "Make a 'home for your stuff' if you haven't already."
    q.prompts.create prompt_type: 'checkbox', content: 'Choose a container.'
    q.prompts.create prompt_type: 'checkbox', content: "Decide where the container will be kept in your home."
    q.prompts.create prompt_type: 'checkbox', content: "Start using this home for your personal items every day."

    puts "Saved screen #{seq}"
    seq += 1

    ########################################################################################
    # => Module 2
    ########################################################################################

    c = Category.create name: 'Module 2: Prospective Memory continued'


    s = c.screens.create seq: seq, content: <<-END
    <h2>
      Module 2. Prospective Memory continued.
    </h2>

    <p>
      Recall that prospective memory is the ability to remember to do things in the future. <!-- This next module features strategies to address these problems. --> Prospective memory difficulty is a common memory problem for many people and tends to be challenging for everyone.<br/>
      We will be using calendars and “to do” lists to help improve prospective memory.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.<br/>
      <% if current_user.response_to_question_name( 'will_use_calendar' ).present? || current_user.response_to_question_name( 'will_you_make_home_for_stuff' ).present? %>
        <p>You said you'd be willing to:
        <ul>
        <% if current_user.response_to_question_name( 'will_use_calendar' ).try( :content ) == 'Yes' %>
            <%= '<li>make a home for your stuff</li>'.html_safe %>
        <% end %>
        <% if current_user.response_to_question_name( 'will_you_make_home_for_stuff').try( :content ) == 'Yes' %>
            <%= '<li>use a calendar</li>'.html_safe %>
        <% end %>
        </ul>
      <% end %>
      <p>If you had any trouble, 
        <a href= '<%= screen_path( id: Category.first.screens.first.seq ) %>'>review Module 1</a>
        and see if you can make improvements.
      </p>
    </p>

    END

    

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      First, let’s go back to thinking about calendar use, which was introduced in Module 1. Plan to check your calendar 1-3 times every day (or more if you are busy or tend to forget things.) Remember to have it with you always. How are you going to remember to check your calendar? <br/>
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

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_linking', content: <<-END
    <p>
      Will you try the linking tasks strategy?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_automatic_places', content: <<-END
    <p>
      Another strategy to try is “automatic places.” This just means putting your calendar where you’ll see it every morning, and seeing it will remind you to check it. Your automatic place could be your “home for your stuff,” for example.<br/>
      Is the automatic places strategy something you’ll try?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"

    seq += 1
    s = c.screens.create seq: seq

    q = s.questions.create name: 'where_keep_calendar', content: "<p>Where will you keep your calendar?</p>"
    p = q.prompts.create prompt_type: 'text_field'

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <h1>Setting Alarms, Linking Tasks, Automatic Places</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="//www.youtube.com/embed/tSZFrjo1xxA" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'alarm_or_linking_or_places', content: <<-END
    <p>
      Will you try setting an alarm, linking tasks, or automatic places to remember to check your calendar?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already use one of these to remember to check calendar.", prompt_type: 'radio'

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Now we’re going to talk about “to do” lists. Things that need to get done on a certain day should go in your calendar for that day. Other to do items should go on your to do list. <br/>
      After coming up with a big list of things you want to do, it is helpful to decide whether each item needs to be done immediately, or if it can wait until you have more time to do it. This helps make the to do list less overwhelming. One way to prioritize your to do list is to divide the items up into three different categories.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Here is an example of a prioritized to do list. Go ahead and fill it in with your own items. If you use a paper calendar, you can then transfer your to do list to a sticky note and keep it in your calendar. If you use an electronic calendar, you might want to use a word processing document for your to do list, or you might use an app on your smart device.<br/>
      <strong><a href='https://s3.amazonaws.com/cogsmart/todo.pdf' target='_blank'>Click here</a></strong> to download a blank copy of this to do list.
      You can also use our online <strong>#{ActionController::Base.helpers.link_to 'To Do List', '/tasks'}</strong> to create and track items you need to get done.
    </p>
    <table class='table'>
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
        <td>...</td>
        <td>...</td>
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

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_todo_lists', content: <<-END
    <p>
      Are to do lists something you’re willing to try?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "saved question #{q.name}"
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
    <table class='table'>
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
        <td>Clean out cupboards <br>(toss old food, clean shelves, organize)</td>
        <td>Automobile Maintenance </td>
      </tr>
      <tr>
        <td>Social outings</td>
        <td>Scrub trash can/under sink</td>
        <td>...</td>
      </tr>
      <tr>
        <td>Exercise <br>(more likely to happen if it’s an appointment!)</td>
        <td>Clean refrigerator <br>(throw out old food, clean shelves, clean outside)</td>
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

    s = c.screens.create seq: seq, name: "Module 2 - Practice Skills List"
    q = s.questions.create name: 'practice_skills_list', content: <<-END

    <p>
      That’s the end of Module 2, on calendar use and to-do lists. For home practice, be sure to practice these skills.

    </p>
    END

    p = q.prompts.create content: "Practice checking your calendar every day by using alarms, linking tasks, or automatic places.", prompt_type: 'checkbox'
    p = q.prompts.create content: "Have a planning session with your calendar to help you get things organized for the coming week.", prompt_type: 'checkbox'
    p = q.prompts.create content: "Continue to work on your to do list, making sure to transfer any items that can be assigned specific dates to your calendar", prompt_type: 'checkbox'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    ########################################################################################
    # => Module 3
    ########################################################################################

    c = Category.create name: 'Module 3: Short-term Prospective Memory'

    s = c.screens.create seq: seq, content: <<-END
    <h2>
      Module 3. Short-term Prospective Memory
    </h2>
    <p>
      By now, we hope that you’re carrying your calendar with you every day, checking it daily (or several times of day, if needed), and having a weekly planning session to help you plan for the week ahead. Your calendar can help remind you to put things on your to do list, and your to do list can help remind you to put tasks in your calendar. 
      If you’re having any trouble with these strategies, please 
      <a href='<%= screen_path( id: Category.first.screens.first.seq )%>'>review Modules 1</a> and 
      <a href='<%= screen_path( id: Category.second.screens.first.seq )%>'>2</a>.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, name: "Module 2 Recap", content: <<-END

    <p>
      How did your home practice go? Remember to check off the home practice activities you did.
      <% if current_user.response_to_question_name( 'will_use_linking' ).present? || current_user.response_to_question_name( 'will_use_automatic_places' ).present? || current_user.response_to_question_name( 'will_use_todo_lists' ).present? %>
        <p>You said you'd be willing to:
        <ul>
        <% if current_user.response_to_question_name( 'will_use_linking' ).try( :content ) == 'Yes' %>
          <li>Use linking</li>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_automatic_places' ).try( :content ) == 'Yes' %>
          <li>Use automatic places</li>
        <% end %>


        <% if current_user.response_to_question_name( 'alarm_or_linking_or_places' ).try( :content ) == 'Yes' %>
          <li>set an alarm, link tasks, or automatic places to remember to check your calendar</li>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_todo_lists' ).try( :content ) == 'Yes' %>
            <li>use to do lists</li>
        <% end %>
        </ul>
      <% end %>
      <p>If you had any trouble, 
      <a href='<%= screen_path( id: Category.second.screens.first.seq )%>'>review Module 2</a> 
      and see if you can make improvements.</p>

      END

      puts "Saved screen #{seq}"
      seq += 1

      s = c.screens.create seq: seq, name: "Module 2 Recap - Calendar", content: <<-END

      <br/>
      <% if (current_user.response_to_question_name( 'where_keep_calendar' ).present?) %>
        Here's where you said you would keep your calendar:
        <ul>
          <li><%= current_user.response_to_question_name( 'where_keep_calendar' ).content %></li>
        <ul>
        How is that working for you? Are you carrying your calendar with you and checking it every day?
        <p>If yes, great! Keep using your calendar to stay on top of your schedule. If not, Maybe it would help to choose a different place to keep your calendar. Remember to choose a place where you’ll see it regularly. If you need to check the calendar more often, try setting alarms or linking calendar checking with another automatic activity. For review, see Module 2.</p>
      <% else %>
        <p> You didn't provide a place to keep your calendar. If you've thought of somewhere, go back and write it down <a href='/screens/<%= Question.find_by( name: 'where_keep_calendar').screen.seq %>'>here</a>.
      <% end %>
      <br/>
      </p>

      END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_writing_on_hand', content: <<-END
    <h4>
      Now let’s review some short-term prospective memory strategies.
    </h4>
    <p>
      It’s not always feasible to use your calendar to remember everything. Short-term situations call for different strategies.<br/>
      <strong>Here’s one:</strong> write things down on your hand. Examples: “Call Katy,” “Mail rent check,” “Get milk”.<br/>
      This strategy works well because you’re likely to see the reminder.
    </p>
    <p>
      Will you try writing on your hand?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question : #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_messages', content: <<-END
    <p>
      For people who use voicemail, answering machines, email, or texting, here’s another strategy: leave yourself a message or send yourself an email or text.<br/>
      This strategy also works well because you’re likely to see the reminder.<br/>
    </p>
    <p>
      Will you try leaving yourself a message or sending yourself an email or text?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question: #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'will_use_reminders', content: <<-END
    <p>
      Here’s another short-term prospective memory strategy. Set an alarm. It can be an old-fashioned kitchen timer, or a timer on your stove, microwave, watch, smart phone, or tablet. Chances are, when the alarm goes off, you will remember what you needed to do. If you regularly use a smart device, you can make this method totally foolproof by setting a reminder in your device. Most smart devices allow you to say your reminder out loud (e.g., “Remind me to turn off the oven in 20 minutes”).
    </p>
    <p>
      Will you try using an alarm or smart device reminder?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question : #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq
    q = s.questions.create name: 'will_use_self-talk', content: <<-END
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
      
      <p>Remember, you’re more likely to remember if you talk about the consequences of forgetting OUT LOUD.</p>
    </p>
    <p>
      Is talking to yourself about the consequences of forgetting something you’ll try?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question : #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_cant_miss_reminders', content: <<-END
    <p>
      OK, we’ve got one more low-tech short-term prospective memory strategy for you: Can’t Miss Reminders. These are reminders that you can’t miss seeing. For example: Items you need to take with you when you leave the house can be placed by the door or hanging in a bag on the front doorknob. A sticky note on your bathroom mirror is also hard to miss.
    </p>
    <p>
      Are can’t miss reminders something you’ll try?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question : #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>Short-term Prospective Memory Strategies</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="//www.youtube.com/embed/SONXTr8dHX0" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'mem_strategies_using', content: <<-END
    <p>
      Now we’ve gone over strategies to help you get organized and strategies to improve long-term and short-term prospective memory. Take a moment to think about the following strategies.<br/>
      Which are you already using?
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: 'A home for your stuff'
    q.prompts.create prompt_type: 'checkbox', content: "Calendar use"
    q.prompts.create prompt_type: 'checkbox', content: "Linking tasks, automatic places, or alarms to remember to check your calendar"
    q.prompts.create prompt_type: 'checkbox', content: "To do lists"
    q.prompts.create prompt_type: 'checkbox', content: "Writing on your hand"
    q.prompts.create prompt_type: 'checkbox', content: "Leaving yourself a voicemail / email / text"
    q.prompts.create prompt_type: 'checkbox', content: "Alarms or smart device reminders"
    q.prompts.create prompt_type: 'checkbox', content: "Visual imagery"
    q.prompts.create prompt_type: 'checkbox', content: "Talking to yourself about the consequences of forgetting"
    q.prompts.create prompt_type: 'checkbox', content: "Can’t miss reminders"

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'mem_strategies_want_to_try', content: <<-END

    <p>
      Which strategies aren't you using, but would like to try?
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: 'A home for your stuff'
    q.prompts.create prompt_type: 'checkbox', content: "Calendar use"
    q.prompts.create prompt_type: 'checkbox', content: "Linking tasks, automatic places, or alarms to remember to check your calendar"
    q.prompts.create prompt_type: 'checkbox', content: "To do lists"
    q.prompts.create prompt_type: 'checkbox', content: "Writing on your hand"
    q.prompts.create prompt_type: 'checkbox', content: "Leaving yourself a voicemail / email / text"
    q.prompts.create prompt_type: 'checkbox', content: "Alarms or smart device reminders"
    q.prompts.create prompt_type: 'checkbox', content: "Visual imagery"
    q.prompts.create prompt_type: 'checkbox', content: "Talking to yourself about the consequences of forgetting"
    q.prompts.create prompt_type: 'checkbox', content: "Can’t miss reminders"

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
      <p>
      Now, think back to the goals you wrote down in Module 1. 

      <% current_user.goals.each do |goal| %>
        <% unless goal.content.blank? %>
          <li><%= goal.content %></li> 
        <% end %>
      <% end %>
    </p>
    END

    q=s.questions.create name: 'mem_strategies_reflection', content: <<-END
      <p>How can the organization and prospective memory strategies you just reviewed help you reach your goals? Take a moment to write down your thoughts:</p>
    END

    p = q.prompts.create content: "Memory strategy reflection", prompt_type: 'text_area'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'module_3_end', content: <<-END
    <h4>
      That’s the end of Module 3, on short-term prospective memory strategies. For home practice, be sure to practice these skills:
    </h4>

    END
    q.prompts.create prompt_type: 'checkbox', content: 'Continue to practice checking your calendar every day and have your weekly calendar planning session.'
    q.prompts.create prompt_type: 'checkbox', content: "Practice at least two of the short-term prospective memory strategies (writing on your hand, leaving yourself a voicemail / email / text, alarms / smart reminders, visual imagery, talking to yourself about the consequences of forgetting, and can’t miss reminders)."

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    #########################################################################################
    # => Module 4
    #########################################################################################

    c = Category.create name: 'Module 4: Conversational Attention'


    s = c.screens.create seq: seq, content: <<-END
    <h2>
      Module 4: Conversational Attention.
    </h2>

    <p>
      Now we’re going to switch gears and start introducing strategies to help with attention and concentration. First, we’ll focus on conversational attention. Being able to pay attention during conversations is the key to understanding and remembering information that you need. Paying attention during conversations can also help reduce misunderstandings with bosses, teachers, friends, and romantic partners. These four strategies can help.
      <ol>
        <li><strong>L</strong>isten Actively</li>
        <li><strong>E</strong>liminate Distractions</li>
        <li><strong>A</strong>sk Questions</li>
        <li><strong>P</strong>araphrase</li>
      </ol>
    </p>
    <p>
      Look at the acronym these four strategies form: <strong>LEAP</strong>. You can use this acronym to help yourself “LEAP into conversations.”
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.<br/>
      <% if current_user.response_to_question_name( 'will_use_writing_on_hand' ).present? || current_user.response_to_question_name( 'will_use_messages' ).present? || current_user.response_to_question_name( 'will_use_reminders' ).present? || current_user.response_to_question_name( 'will_use_self-talk' ).present? || current_user.response_to_question_name( 'will_use_cant_miss_reminders' ).present? %>
        <p>You said you'd be willing to:
        <ul>

        <% if current_user.response_to_question_name( 'will_use_writing_on_hand' ).try( :content ) == 'Yes' %>
            <%= '<li>write on short notes on your hand</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_messages' ).try( :content ) == 'Yes' %>
            <%= '<li>leave yourself a message or sending yourself an email or text</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_reminders' ).try( :content ) == 'Yes' %>
            <%= '<li>use an alarm or smart device reminder</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_self-talk' ).try( :content ) == 'Yes' %>
            <%= '<li>talk to yourself about the consequences of forgetting something</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_cant_miss_reminders' ).try( :content ) == 'Yes' %>
            <%= '<li>use can’t miss reminders</li>'.html_safe %>
        <% end %>

        </ul>
      <% end %>
      <p>If you had any trouble, 
      <a href='<%= screen_path( id: Category.all[2].screens.first.seq )%>'>review Module 3</a> and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path( id: Category.all[1].screens.first.seq )%>'>Module 2.</a></p>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h4>
      First, Listen actively.
    </h4>
    <p>
      Use nonverbal behaviors to convey that you’re listening.
      <ul>
        <li>Turn toward the speaker</li>
        <li>Open your posture, relax, avoid “closed” body language (like crossing your arms) </li>
        <li>Lean toward the speaker</li>
        <li>Maintain adequate eye contact (hint: if eye contact makes you uncomfortable, look at the person’s nose instead. They’ll never know!)</li>
      </ul>
    </p>
    <p>
      Your conversation partner will really appreciate that you’re listening actively, and you will be more able to give your full attention to the conversation.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h4>
      Second, Eliminate distractions.
    </h4>
    <p>
      What sorts of distractions affect your conversations? Phones? Kids? TV? Pets? How can you reduce these distractions? Turn phones, music, TV off? Go into a quieter room? <br/>
      Reducing these distractions helps you devote your full attention to the conversation, which will help you remember it better later on. Your conversation partner will appreciate having your undivided attention.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h4>
      Third, Ask questions.
    </h4>
    <ul>
      <li>Ask questions for clarification.</li>
      <li>Ask the speaker to slow down, repeat information, or explain something in a different way.</li>
    </ul>
    <p>
      Asking questions communicates interest and conveys that what your conversation partner has to say is important to you. It also makes you pay attention better, which will help you remember the conversation later.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h4>
      Finally, Paraphrase.
    </h4>
    <ul>
      <li>Repeat information back in your own words.</li>
    </ul>
    <p>
      Paraphrasing helps ensure that you’ve heard correctly and understand; it also gives the speaker a chance to correct any misunderstandings. Paraphrasing helps you understand, pay attention to, and remember the information later.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>Praphrasing and asking questions</h1>
    </p>
    <p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/e2IE37BxCA0" frameborder="0" allowfullscreen></iframe>
      </center>
    </p>
    
    <!--
    <p>
      Here’s an example of how paraphrasing and asking questions can help you pay attention during conversations.
    </p>
    <table>
      <tr>
        <th>Doctor says:</th>
        <th></th>
        <th>You paraphrase:</th>
      </tr>
      <tr>
        <td>“I’ve been looking over your records, and I’m a little concerned about your cholesterol level. It’s been high in the past – it was over 230 back in August of last year. It’s 205 right now, but your goal should be to get it down to 200 or below. Sometimes we prescribe medication to lower cholesterol, but in your case, I think you can take some steps to lower it without medication. Be sure to limit your dietary fats, including meats, eggs, butter, cheese, and ice cream. Exercising three times a week should also help lower your cholesterol. I want to keep a close eye on it, so let’s continue to check it every six months to see how you’re doing.”</td>
        <td>&nbsp;&nbsp;</td>
        <td>“Okay, let me make sure I understand you. My cholesterol is a little high right now, but if I cut back on the eggs, butter, and fatty foods, and if I exercise three times a week, I can lower it without taking any medication. We’ll check it in six months and see how I did. Does that sound right?”</td>
      </tr>
    </table>
    <br/><br/>
    <p>
      If the doctor was speaking too quickly, you may need to ask for repetition, or you may have to ask the doctor to slow down. You could say, “That was a lot of information, and I want to be sure I heard you right. Could you tell me again what I shouldn’t eat, and could you say it a little more slowly?”
    </p>
    -->

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_leap', content: <<-END
    <p>
      Will you try using the <strong>LEAP</strong> strategies to improve your attention during conversations?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'end_module_4', content: <<-END

    <h4>That’s the end of Module 4, on conversational attention strategies.</h4>
    <p>
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
      <h4>For home practice, be sure to practice these skills:</h4>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "Continue to practice checking your calendar every day and have your weekly calendar planning session"
    q.prompts.create prompt_type: 'checkbox', content: "Practice conversational attention skills (LEAP!): Listen actively, Eliminate distractions, Ask questions, and Paraphrase"

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    ########################################################################################
    # => Module 5
    ########################################################################################

    c = Category.create name: 'Module 5: Paying Attention during Tasks'

    s = c.screens.create seq: seq, content: <<-END
    <h2>
      Module 5: Paying Attention during Tasks
    </h2>
    <p>
      In Module 4, we reviewed strategies for paying attention during conversations (LEAP). These strategies will help you become a more active participant in your conversations, and will help you focus on the conversation. Of course, the more you concentrate on the conversation, the better you’ll remember it later. Many people notice that using the LEAP strategies during conversations improves their relationships with colleagues, friends, and romantic partners.<br/>
      In this module, we’ll focus on strategies to help you pay attention during tasks. When someone else is giving you a task to do, you want to make sure you understand the task completely. Use your LEAP skills (especially asking questions and paraphrasing) to make sure you understand the task.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.
      
      <% if current_user.response_to_question_name( 'will_use_leap' ).try( :content ) == 'Yes' %>
        <p>You said you'd be willing to:
        <ul>
            <%= '<li>try using the LEAP strategies to improve your attention during conversations</li>'.html_safe %>
        </ul>
      <% end %>

      <p>If you had any trouble, review 
      <a href='<%= screen_path( id: Category.all[3].screens.first.seq ) %>'>Module 4</a> and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path( id: Category.all[1].screens.first.seq ) %>'>Module 2</a>.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>Paying Attention During Tasks</h1>
    </p>
    <p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/nkXs3u4YfC8" frameborder="0" allowfullscreen></iframe>
      </center>
    </p>

    <!--
    <p>
      You’re at home and your roommate reminds you that it’s your turn to clean the kitchen today. She tells you that <strong>“the dishwasher needs unloading, there are dishes in the sink, the floor’s a mess, and the pizza that you baked last night leaked melted cheese all over the bottom of the oven.” She says she also “noticed a couple of yogurt containers of yours in the refrigerator that are past their expiration date.”</strong>
      <aside>
        To make sure you heard and understood everything, you want to paraphrase back something like this:<br/>
        <strong>“Let me make sure I got everything you said: dishes, floor, oven, and yogurt?”</stong><br/>
        Notice how simple you can make the task by identifying the four main parts. Notice how you’re reducing “information overload” by focusing just on the four main parts. Again, this is simple paraphrasing, just like we’ve been practicing for conversational attention.
      </aside>
    </p>

    -->

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      While you’re working on a task, we highly recommend a strategy called “self-talk.” This just means talking to yourself out loud about what you’re doing. If your task has different steps, you can repeat the steps of the activity out loud to yourself as you complete them. Talk to yourself about the progress you’re making, and what parts of the task are coming up next.<br/>
      Using self-talk will help keep you focused on the task at hand. You will be less likely to be distracted by internal thoughts or external events. Using self-talk will also help you remember completing the task. It might feel a little funny at first to be talking to yourself while you complete a task, but the more you practice, the better it works and the more naturally it will come to you.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Self-talk is a great strategy to maintain focus on complex, sequential tasks like cooking a meal, assembling a piece of furniture, or trouble-shooting a computer problem. <br/>
      Self-talk also works well for very brief, simple tasks. Have you ever asked yourself,
      <ul>
        <li>“Did I take my medication this morning?”</li>
        <li>“Did I turn off the iron?”</li>
        <li>“Did I close the garage door?” </li>
      </ul>
    <p>
      Tell yourself out loud,
    </p>
      <ul>
        <li>“It’s Friday morning, and I’m taking my morning pills.”</li>
        <li>“I’m turning off the iron, so I don’t have to worry about burning down the house!”</li>
        <li>“It’s Tuesday, and I’m closing the garage door as I leave.”</li>
      </ul>
      <ul>
        <li>Saying these things out loud as you do them will help you remember that you’ve done them.</li>
        <li>Talk to yourself about your progress.</li>
        <li>Helps you remember completing the task. </li>
      </ul>
    </p>

    END


    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>The importance of self-talk</h1>
    <p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/UW61Y5pvm9c" frameborder="0" allowfullscreen></iframe>
      </center>
    </p>
    <!--
    <p>
      Watch as I do this sequence of moves, then, you start to mirror my moves without saying anything.<br/>
      I’m stopping, but you keep going.<br/>
      Difficult?<br/>
      OK, now try it with self-talk. Fist, edge, palm… fist, edge, palm.<br/>
      I’m stopping, but you keep going. Keep using self-talk.<br/>
      Was that easier?<br/>
      Notice how talking to yourself about what you’re doing can make tasks easier and more automatic.<br/>
    </p>
    -->

    END

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>Self-talk during tasks</h1>
    <p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/IAMdMmWoeqg" frameborder="0" allowfullscreen></iframe>
      </center>
    </p>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_self_talk', content: <<-END
    <p>
      Are you willing to try self-talk during tasks?<br/>
    </p>
    END
    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "saved question #{q.name}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'self_talk_tasks', content: <<-END
    <p>
      What kind of tasks in your life could benefit from adding self-talk?<br/>
    </p>

    END

    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'

    puts "saved question #{q.name}"
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

    s = c.screens.create seq: seq
    q= s.questions.create name: 'will_use_breaks', content: <<-END
    <p>
      Are you willing to take breaks as a way of improving your task attention?
    </p>
    END
    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "saved question #{q.name}"
    seq += 1

    s = c.screens.create seq: seq
    q= s.questions.create name: 'favorite_brief_breaks', content: <<-END
    <p>
      What are YOUR favorite brief breaks?<br/>
    </p>
    END
    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'

    puts "saved question #{q.name}"
    seq += 1

    s = c.screens.create seq: seq
    q= s.questions.create name: 'favorite_long_breaks', content: <<-END
    <p>
      What are your favorite longer breaks?<br/>
    </p>
    END
    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Now it’s time to put self-talk and taking breaks into action. You will see a series of scenarios. Each one has multiple steps, and your task is to indicate whether the steps are in the correct order. Some are in the correct order and some are not. Use self-talk to talk your way through each scenario, and take a brief break if you get tired.  (Each of these will be a separate screen)
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_1', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'

    puts "saved question #{q.name}"

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_2', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1



    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_3', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_4', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_5', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_6', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_7', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_8',  content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_9', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_10', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_11', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_12', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_13', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_14', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_15', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_16', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_17', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_18', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_19', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_20', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_21', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_22', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_23', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Baking cookies</strong>
      <ol>
        <li>Select recipe</li>
        <li>Make dough</li>
        <li>Bake in oven</li>
        <li>Get ingredients</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_24', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    # s = c.screens.create seq: seq
    # q=s.questions.create name: 'order_25', content: <<-END
    # <p>
    #   Are these steps in the correct order? Mark “Yes” or “No.”
    # </p>
    # <p>
    #   <strong>Looking up a telephone number in the phone book</strong>
    #   <ol>
    #     <li>Get phone book</li>
    #     <li>Turn pages to find listing</li>
    #     <li>Call number</li>
    #     <li>Write down number</li>
    #   </ol>
    # </p>

    # END

    # p = q.prompts.create content: "Yes", prompt_type: 'radio'
    # p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    # puts "saved question #{q.name}"
    # puts "Saved screen #{seq}"
    # seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_26', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_27', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_28', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    # s = c.screens.create seq: seq
    # q=s.questions.create name: 'order_29', content: <<-END
    # <p>
    #   Are these steps in the correct order? Mark “Yes” or “No.”
    # </p>
    # <p>
    #   <strong>Renting a movie</strong>
    #   <ol>
    #     <li>Go to video rental store</li>
    #     <li>Select a movie</li>
    #     <li>Take movie to register</li>
    #     <li>Pay for movie</li>
    #   </ol>
    # </p>

    # END

    # p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    # p = q.prompts.create content: "No", prompt_type: 'radio'
    # puts "saved question #{q.name}"
    # puts "Saved screen #{seq}"
    # seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_30', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q= s.questions.create name: 'order_31', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_32', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Calling a friend</strong>
      <ol>
        <li>Pick up phone</li>
        <li>Dial phone number</li>
        <li>Wait until friend answers</li>
        <li>Say hello</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_33', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_34', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_35', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_36', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_37', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_38', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_39', content: <<-END
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
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_40', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_41', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_42', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_43', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_44', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_45', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_46', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_47', content: <<-END
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

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_48', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Walking the dog</strong>
      <ol>
        <li>Put leash on dog</li>
        <li>Call dog to you</li>
        <li>Walk the dog</li>
        <li>Take dog to park</li>
        <li>Return dog home</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_49', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Driving a car</strong>
      <ol>
        <li>Open car door</li>
        <li>Get in car</li>
        <li>Start up car</li>
        <li>Change the gear</li>
        <li>Press gas pedal</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    # s = c.screens.create seq: seq
    # q=s.questions.create name: 'order_50', content: <<-END
    # <p>
    #   Are these steps in the correct order? Mark “Yes” or “No.”
    # </p>
    # <p>
    #   <strong>Playing a CD</strong>
    #   <ol>
    #     <li>Select a disc</li>
    #     <li>Put in player</li>
    #     <li>Choose a song</li>
    #     <li>Hit play button</li>
    #     <li>Listen to song</li>
    #   </ol>
    # </p>

    # END

    # p = q.prompts.create content: "Yes", prompt_type: 'radio'
    # p = q.prompts.create content: "No", prompt_type: 'radio'
    # puts "saved question #{q.name}"
    # puts "Saved screen #{seq}"
    # seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_51', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Applying for a job</strong>
      <ol>
        <li>Make a resume</li>
        <li>Attend the interview</li>
        <li>Look for jobs</li>
        <li>Negotiate contract</li>
        <li>Take the job</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_52', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Making coffee</strong>
      <ol>
        <li>Grind coffee beans</li>
        <li>Put in filter</li>
        <li>Wait for coffee</li>
        <li>Fill with water</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_53', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Taking a shower</strong>
      <ol>
        <li>Turn on water</li>
        <li>Turn off water</li>
        <li>Wash hair and body</li>
        <li>Dry off with towel</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_54', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Getting gas</strong>
      <ol>
        <li>Unscrew gas cap</li>
        <li>Place pump in tank</li>
        <li>Pump the gas</li>
        <li>Return gas pump</li>
        <li>Replace gas cap</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_55', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Making spaghetti</strong>
      <ol>
        <li>Boil pot of water</li>
        <li>Add spaghetti to pot</li>
        <li>Drain noodles</li>
        <li>Cook until soft</li>
        <li>Add spaghetti sauce</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_56', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Going on a picnic</strong>
      <ol>
        <li>Pack picnic basket</li>
        <li>Drive to park</li>
        <li>Lay down blanket</li>
        <li>Eat picnic lunch</li>
        <li>Drive home</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_57', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Going to a drive thru</strong>
      <ol>
        <li>Pull up to drive thru</li>
        <li>Look at menu</li>
        <li>Order your food</li>
        <li>Pay for your food</li>
        <li>Drive away</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_58', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Making a milkshake</strong>
      <ol>
        <li>Get out blender</li>
        <li>Turn blender on</li>
        <li>Put milk and ice cream in blender</li>
        <li>Pour in a glass</li>
        <li>Drink milkshake</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_59', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Giving a present</strong>
      <ol>
        <li>Go to store</li>
        <li>Select gift</li>
        <li>Buy gift</li>
        <li>Wrap gift</li>
        <li>Give gift</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "No", prompt_type: 'radio'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'order_60', content: <<-END
    <p>
      Are these steps in the correct order? Mark “Yes” or “No.”
    </p>
    <p>
      <strong>Making a cake</strong>
      <ol>
        <li>Get ingredients</li>
        <li>Make batter</li>
        <li>Select recipe</li>
        <li>Bake in oven</li>
        <li>Ice the cake</li>
      </ol>
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio', correct: true
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    ######
    #
    # number right:
    # current_user.responses.where( prompt_id: Prompt.where(question_id: Question.where( "name like 'order%'" ).pluck(:id) ).where( correct: true ).pluck( :id ) ).count
    # total:
    # Question.where( "name like 'order%'" ).count
    ######

    s = c.screens.create seq: seq, content: <<-END
    <p>
    You got
    <%= current_user.responses.where( prompt_id: Prompt.where(question_id: Question.where( "name like 'order%'" ).pluck(:id) ).where( correct: true ).pluck( :id ) ).count %>
    out of
    <%= Question.where( "name like 'order%'" ).count %>
    correct.
    </p>

    <p>
      Did you notice that self-talk helped you focus? It may have also helped you slow down to avoid careless errors.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
      <p>
      Now, think back to the goals you wrote down in Module 1. 

      <% current_user.goals.each do |goal| %>
        <% unless goal.content.blank? %>
          <li><%= goal.content %></li> 
        <% end %>
      <% end %>
    </p>
    END

    q=s.questions.create name: 'goals_thoughts', content: <<-END
    <p>
      How can the conversational and task attention strategies you just reviewed help you reach your goals? Take a moment to write down your thoughts:
    </p>
    END
    p = q.prompts.create content: "Write your thoughts here:", prompt_type: 'text_area'
    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'end_module_5', content: <<-END
    <p>
      That’s the end of Module 5, on task attention strategies. For home practice, be sure to practice these skills:
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "Use the self-talk strategy at least once every day"
    q.prompts.create prompt_type: 'checkbox', content: "Take a brief break or a longer break at least once every day and notice if you feel more refreshed and attentive following your break"

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    ###########################################################################################
    # => Module 6
    ###########################################################################################

    c = Category.create name: 'Module 6: Learning and Memory'

    s = c.screens.create seq: seq, content: <<-END
    <h2>
      Module 6. Learning and Memory
    </h2>
    <p>In this module, we’ll be working on strategies to enhance learning and memory. Think of your memory like a filing cabinet in your mind. Different files are organized according to various topics (e.g., childhood memories, names of people you know, how to do something). Each type of file is likely to get stored in a different location in the brain.<br/>
      Through effort and organization, you are more likely to file a memory well, so that it can be more easily retrieved later. You need a good memory strategy (like a good filing system)!
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.
      <% if current_user.response_to_question_name( 'will_self_talk' ).try( :content ) == 'Yes' || current_user.response_to_question_name( 'will_use_breaks' ).try( :content ) == 'Yes' %>
        <p>You said you'd be willing to:
        <ul>

        <% if current_user.response_to_question_name( 'will_self_talk' ).try( :content ) == 'Yes' %>
            <%= '<li>try self-talk during tasks</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_breaks' ).try( :content ) == 'Yes' %>
            <%= '<li>take breaks as a way of improving your task attention</li>'.html_safe %>
        <% end %>

        </ul>
      <% end %>

      <p>If you had any trouble, <a href='<%= screen_path( id: Category.all[4].screens.first.seq ) %>'>review Module 5</a> and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path( id: Category.all[1].screens.first.seq ) %>'>Module 2</a>.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Your memory will work best when you are alert, well-rested, and avoiding over-use of alcohol and drugs. Studies suggest that eating a healthful diet, exercising regularly, and drinking enough water will also improve memory and other cognitive functions.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Most memory problems are due to not paying attention in the first place or not learning the information to be remembered.
    </p>
    <p>
      <strong>Memory Requires Attention.</strong> You cannot remember something if you do not first attend to it! If you use your attention strategies from Modules 4 and 5, you’ll find it much easier to remember things. Your <strong>LEAP</strong> skills will help you learn and remember things you hear, whereas your self-talk skills will help you remember things you do.
    </p>
    <h4>
      The memory strategies in the next few Modules will help you:
    </h4>
    <ul>
      <li>Decide what is important enough to remember and simplify information to be remembered.</li>
      <li>Reduce the amount of information to be remembered.</li>
      <li>Make information personally meaningful to you in order to remember it more easily.</li>
    </ul>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Our brains have a limited amount of resources. One of the best ways to save your brain resources for really important tasks is to <strong>write things down</strong> that you want to remember. If you need 10 items at the grocery store, you could probably memorize them with a few minutes of mental effort, but isn’t it easier to just make a list? This way, you don’t have to memorize anything at all, and you can save your mental energy for your shopping trip. Now that you are using a calendar and to do lists, consider using a section of your calendar for other important information that you want to remember.</br>
      Don’t trust your memory! Write it down instead!
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Have you ever made a shopping list and then realized when you got to the store that you remembered everything on the list without having to look at it? This is because writing things down is also a great learning and memory strategy in itself.<br/>
      Writing helps people learn information in multiple ways, multiple times – if you write it, read it as you write, say it out loud after you write, and hear yourself say it, you’ve just learned the information through multiple senses, and the memory will be much stronger than if you had just heard it once.<br/>
      Writing things down is easy, works for most types of information, and is used by most successful people to learn and remember information. Students take notes in college classes, and top executives take notes in meetings. You can take notes in many daily situations.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <strong>Example:</strong> Let’s say I want to see a movie, so I call the movie theatre to hear what’s playing tonight. The recording tells me that The Wizard of Oz is playing at 6:30, 9, and 11 p.m., and Rebel Without a Cause is playing at 7 and 9:30. Now, if I write that down as I’m hearing it, I might write something like:
      <ul>
        <li>Oz, 6:30, 9, 11</li>
        <li>Rebel, 7, 9:30</li>
      </ul>
      <p>I’ve just encoded the information in multiple ways – through hearing it, through writing it, and through reading as I write it. I’ve just made that memory many times stronger. Now if I wrote that on a sticky note, I could put it right in my calendar on today’s date.</p>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Let’s try practicing some note-taking. The next video will show a doctor telling a patient about a new medical regimen. Pretend that you are the patient, and take notes while you watch the video.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>Note Taking</h1>
    </p>
    <p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/vWjp3btNpSQ" frameborder="0" allowfullscreen></iframe>
      <!--
      “I’ve looked over your lab results, and I’m going to make a few changes in your medications, as well as a few suggestions. First, I don’t think you need to take that Luvox anymore. You can’t stop taking it all of a sudden, though – you have to taper off gradually. Right now, you’re taking two pills a day. I want you to cut down to one pill a day for a week, then one pill every other day for a week. Second, I want to start you on a new medication called Lotensin. Lotensin is a medication that should lower your blood pressure, but there are a few side effects that I want you to be aware of. One is that it may upset your stomach a little bit, but that is only temporary, and it should go away within a week. The other side effect that I really want you to look out for is dizziness. Most people don’t get dizzy on Lotensin, but if you do, stop taking it and call my office to make an appointment to come back in. Third, I want you to start exercising at least ten minutes every day – you should exercise hard enough that you breathe hard and break a sweat, okay? Finally, from what you indicated on this screening form, you’re drinking way too much coffee. I want you to gradually lower your coffee intake to no more than two eight-ounce cups per day.”
      -->
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h4>
      Let’s see how much information you got in your notes. Good notes might look like this:
    </h4>
    <ul>
      <li>“Luvox – taper (1 pill/day for 1 week, then every other 1 week)</li>
      <li>Lotensin – new bld pres med. Upset stomach OK but call if dizziness</li>
      <li>Exercise 10 min/day – breathe hard, sweat</li>
      <li>16 oz. coffee/day max”</li>
    </ul>
    <p>
      How did you do? Did you write down too little? Too much? A great way to practice note-taking is to watch instructional videos online and take notes on them.  Then you can play the video again and see how accurate your notes were.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_writing', content: <<-END
    <p>
      Are you willing to write things down as a way of improving your memory?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Remember, in real life, you may need to gently interrupt someone to ask for repetition or for the spelling of a word. You might also need to ask someone to slow down. You can always use your LEAP skills, especially asking questions and paraphrasing, to make sure you’re on track. <strong>Paraphrasing</strong> is especially useful, because when you paraphrase, you are not only repeating the information, you are putting it into your own words, which will be easier to remember because it will be more personally meaningful to you.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_paraphrasing', content: <<-END
    <p>
      Are you willing to try paraphrasing as a way of improving your memory?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      The next learning and memory skill is <strong>association</strong>. Association means linking new information you want to remember to old information that you already know. All you need to do is focus on the similarities and differences between the new information and the old information.<br/>
      Association works well when you meet new people. Let’s say you meet a new person named Jane. You could remember her by comparing her to old your friend Jane, e.g., “This new Jane has blue eyes, but my Jane has brown eyes. Both Janes are tall, though.”<br/>
      Association works because you are making the new information more personally meaningful and you are processing the information at a deeper level.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_association', content: <<-END
    <p>
      Are you willing to try association as a way of improving your memory?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'end_module_6', content: <<-END
    <p>
      That’s the end of Module 6, on task attention strategies. For home practice, be sure to practice these skills:
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "Practice note-taking with at least two brief (1-3 minute) instructional videos"
    q.prompts.create prompt_type: 'checkbox', content: "Practice paraphrasing in at least two conversations"
    q.prompts.create prompt_type: 'checkbox', content: "Practice association with three names that are new to you. You can get the names from people you meet this week, or from TV or the internet. Remember to think about the similarities and differences between the new information (names) and old information you already know"

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    ########################################################################################
    # => Module 7
    ########################################################################################

    c = Category.create name: 'Module 7: Learning and Memory'

    s = c.screens.create seq: seq
    q= s.questions.create name: 'categorizing_and_chunking', content: <<-END
    <h2>
      Module 7. Learning and Memory
    </h2>
    <p>
      Let’s introduce some additional strategies for improving your ability to learn and remember information.
    </p>
    <p>
      <strong>Categorizing and Chunking</strong> are related strategies that involve dividing a large amount of information into smaller groups or chunks to be remembered.<br/>
      <strong>Chunking</strong> is typically used for remembering numbers. For example, a 10-digit phone number such as 6198675309 is more easily remembered as (619)867-5309.<br/>
      <strong>Categorizing</strong> puts information together in a logical way. For example, let’s say that you want to get ice cream, ketchup, toilet paper, mustard, shaving cream, popsicles, soap, relish, and frozen pizza at the grocery store. That’s 9 items, and it probably would be hard to remember all those items without a list. But if you organize the items in a logical way, they are easier to remember, and if you wrote them down in a certain way on your list, you might get to the grocery store and not even need to look at your list. How could you categorize these 9 items into 3 groups? Categorizing the 9 items into 3 categories makes it so we only need to remember 3 things instead of 9.
    </p>
    END

    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'
    p=q.prompts.create prompt_type: 'text_field'

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.

      <% if current_user.response_to_question_name( 'will_use_writing' ).try( :content ) == 'Yes' || current_user.response_to_question_name( 'will_use_paraphrasing' ).try( :content ) == 'Yes' || current_user.response_to_question_name( 'will_use_association' ).try( :content ) == 'Yes'    %>
        <p>You said you'd be willing to:
        <ul>
        <% if current_user.response_to_question_name( 'will_use_writing' ).try( :content ) == 'Yes' %>
            <%= '<li>write things down as a way of improving your memory</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_paraphrasing' ).try( :content ) == 'Yes' %>
            <%= '<li>try paraphrasing as a way of improving your memory</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_association' ).try( :content ) == 'Yes' %>
            <%= '<li>try association as a way of improving your memory</li>'.html_safe %>
        <% end %>
        </ul>
      <% end %>

      <p>
      If you had any trouble, 
      <a href='<%= screen_path( id: Category.all[5].screens.first.seq ) %>'>review Module 6 </a>
      and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path( id: Category.all[1].screens.first.seq ) %>'>Module 2</a>.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    
    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_chunking', content: <<-END
    <p>
      Are you willing to try chunking and categorizing as a way of improving your memory?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <strong>Acronyms</strong> are words that are made up of initials that stand for a series of words. You learned the LEAP acronym that stands for Listen actively, Eliminate distractions, Ask questions, and Paraphrase.</br>
      Acronyms reduce the amount of information you have to recall because each letter is a cue.<br/>
      Additional examples are:
      <ul>
        <li>ROYGBIV for the colors of the rainbow – red, orange, yellow, green, blue, indigo, violet.</li>
        <li>HOMES for the Great Lakes – Huron, Ontario, Michigan, Erie, Superior.</li>
        <li>SCUBA for self-contained underwater breathing apparatus.</li>
      </ul>
      <p>You can make your own acronyms. For example, if your medications include gabapentin, aspirin, and lisinopril, you could use the acronym GAL to remember them.</p>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_acronyms', content: <<-END
    <p>
      Are you willing to try acronyms as a way of improving your memory?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <strong>Rhymes</strong> can be a helpful memory strategy. Think of how many songs you have memorized – part of what makes it easy to remember song lyrics is that they usually rhyme. For example, “My country ‘tis of thee, sweet land of liberty, of thee I sing.” “30 days, has September, April, June, and November.” “I before E, except after C.”<br/>
      It’s not always easy to think of a rhyme, but if you can, they work really well, especially when you combine rhymes and imagery to remember names. For example: Dr. Burns always learns. (Picture him in the library with lots of books.)<br/>
      Stay tuned for more name-learning strategies!
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_rhymes', content: <<-END
    <p>
      Are you willing to try rhymes as a way of improving your memory?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      They say “a picture is worth a thousand words.” <strong>Visual imagery</strong> can be a very powerful memory tool.  With this strategy, you turn the information you want to remember into a memorable picture.<br/>
      You can picture it in your mind, or, even more helpful, draw it. The weirder or  funnier, the better, because it will be more memorable. This strategy also works well to remember people’s names, even if you don’t combine the image with a rhyme. Example: Your new neighbor is named Sandy Reese. You can picture her eating Reese’s peanut butter cups on a sandy beach.<br/>
      You can get really creative with this strategy. Try turning the picture into a visual story or movie, and imagine the movie in your mind. Again, the weirder or funnier, the better. Even better, act out the information yourself.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_imagery', content: <<-END
    <p>
      Are you willing to use visual imagery as a way of improving your memory?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_1', content: <<-END
    <p>
      <strong>Which strategies would you use to remember information in these scenarios?</strong><br/>
      <br/>
      1. You call information to get a telephone number.<br/>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_2', content: <<-END
    <p>
      2. You want to remember to get these items at the grocery store: shampoo, apples, deodorant, and blueberries.</br>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_3', content: <<-END
    <p>
      3. You want to memorize your neighbors’ names: Nicole, Penny, Ann, Susie, Tom.<br/>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_4', content: <<-END
    <p>
      4. You want to memorize your doctor’s name: Dr. Robert Ying.<br/>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_5', content: <<-END
    <p>
      5. You want to remember your next doctor’s appointment.<br/>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_6', content: <<-END
    <p>
      6. You are given these directions to get to Ralph’s Barber Shop: Take University Ave. east to 10th Ave., turn left on 10th, and park underground in the parking garage.<br/>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_7', content: <<-END
    <p>
      7. You want to memorize your siblings’ birthdays.<br/>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'which_strategies_8', content: <<-END
    <p>
      8. Your roommate tells you that “the dishwasher needs unloading, there are dishes in the sink, the floor’s a mess, and the pizza that you baked last night leaked melted cheese all over the bottom of the oven.” She says she also “noticed a couple of yogurt containers of yours in the refrigerator that are past their expiration date.”<br/>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      You probably noticed that for most of these situations, a few rules hold true:
      <ul>
        <li>There are multiple memory strategies you can use to help you remember information.</li>
        <li>Writing things down is almost always among the strategies you can use, and it’s one of the best strategies, provided that you write down the information in a logical place. Sometimes, that place will be your calendar. Sometimes, the best place to write something down might be on your hand.</li>
      </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <strong>Name Learning Strategies</strong><br/>
      Many people have difficulty with learning and remembering people’s names. Here are some strategies to help with this.<br/>
      <strong>BEFORE</strong> you meet new people, mentally <strong>PREPARE</strong> yourself to remember their names by reviewing your strategies. <br/>
      <strong>WHEN</strong> you meet new people, use these strategies:<br/>
      <strong>OBSERVE THEM:</strong>
        <ul>
          <li>Look people in the eye when you meet them.</li>
          <li>Notice their physical characteristics; look for cues/links to their names.</li>
        </ul>
      <p><strong>LISTEN</strong> to the actual sound of the person’s name when you hear it.<br/></p>
      <p><strong>REQUEST REPETITION</strong> of the person’s name if it is noisy or the name is unusual.</p>
        <ul>
          <li>“I’m sorry, it’s so loud in here, would you mind repeating your name?”</li>
          <li>“Could you say your name again, I’ve never heard it before.”</li>
          <li>This way you hear the name again (even if you heard it the first time!).</li>
        </ul>
      <p><strong>VERIFY PRONOUNCIATION</strong> if it’s noisy or the name is unusual.</p>
        <ul>
          <li>“Let me see if I’m saying that right. Is it ...?”</li>
        </ul>
      <p><strong>REQUEST SPELLING</strong> (you can do this with unusual names or with common names that have multiple spellings, such as Terri, Terrie, Terry, Teri).</p>
        <ul>
          <li>Visualize the spelling in your head; imagine the name written down.</li>
        </ul>
      <p><strong>Ask suitable questions:</strong></p>
        <ul>
          <li>About the name’s nationality (“What kind of name is Anu?”).</li>
          <li>About the person’s preference for a nickname (“Is Bob short for Robert? Do you prefer Bob or Robert?”).</li>
          <li>About the story behind the name if it’s unusual (“It sounds like there’s a story behind the name “Brick.”).</li>
        </ul>
      <p><strong>REPEAT THE NAME</strong> in the initial conversation, either by asking questions about the name and/or using the name in questions.</p>
        <ul>
          <li>“What do you do for a living, Richard?”</li>
          <li>“Do you have any children, Robin?”</li>
        </ul>
      <p><strong>REPEAT THE NAME</strong> when saying goodbye.</p>
        <ul>
          <li>“Nice to have met you, Sam.”</li>
        </ul>
      <p><strong>REHEARSE</strong> the name & <strong>QUIZ</strong> yourself.<br/></p>
      <p><strong>USE ASSOCIATION</strong> to think about similarities and differences between the new person and other people you know who have the same name.<br/></p>
      <p><strong>USE IMAGERY.</strong></p>
        <ul>
          <li>Sandy Brown has light brown (sandy-colored) hair.</li>
          <li>Dr. Burns is bald, as if his hair burned off.</li>
        </ul>
      <p><strong>USE RHYMES</strong> (with imagery).</p>
        <ul>
          <li>Sandy Brown wears a frown. (Picture her frowning.)</li>
          <li>Bobby Knight starts a fight. (Picture him throwing a punch.)</li>
        </ul>
      <p><strong>WRITE DOWN</strong> names of new people (in a spiral notebook you carry with you, for example).<br/></p>
     <p> If you forget someone’s name, <strong>RE-INTRODUCE YOURSELF</strong> to the person and they’ll introduce themselves back to you!</p>
        <ul>
          <li>“You may not remember me, but I’m…”</li>
        </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <h1>Summarizing name-learning strategies</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="//www.youtube.com/embed/fnH_sA7KZgU" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'will_use_name_learning_strategies', content: <<-END
    <p>
      Are you willing to use these name learning strategies?
    </p>

    END

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'
    puts "Saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'end_module_7', content: <<-END
    <p>
      That’s the end of Module 7, on learning and memory strategies. For home practice, be sure to practice these skills.<br/>
      Spend 10-15 minutes re-reading the memory strategies from this module.<br/>
      Practice using one or more of your memory strategies each day this week, focusing on activities that are relevant to your goals and life priorities. Which strategies do you plan to practice?
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "LEAP"
    q.prompts.create prompt_type: 'checkbox', content: "WRITE IT DOWN"
    q.prompts.create prompt_type: 'checkbox', content: "PARAPHRASING"
    q.prompts.create prompt_type: 'checkbox', content: "ASSOCIATION"
    q.prompts.create prompt_type: 'checkbox', content: "CHUNKING"
    q.prompts.create prompt_type: 'checkbox', content: "CATEGORIZING"
    q.prompts.create prompt_type: 'checkbox', content: "ACRONYMS"
    q.prompts.create prompt_type: 'checkbox', content: "RHYMES"
    q.prompts.create prompt_type: 'checkbox', content: "VISUAL IMAGERY"

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    ########################################################################################
    # => Module 8
    ########################################################################################

    c = Category.create name: 'Module 8: Learning and Memory'



    s = c.screens.create seq: seq, content: <<-END
    <h2>Module 8. Learning and Memory</h2>
    <p>
      With all the learning and memory strategies you’ve been trying, you should start to notice some improvements.<br/>
      </p>
    END
      
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.
      </p>

      <% if current_user.response_to_question_name( 'will_use_chunking' ).try( :content ) == 'Yes' || current_user.response_to_question_name( 'will_use_acronyms' ).try( :content ) == 'Yes' || current_user.response_to_question_name( 'will_use_rhymes' ).try( :content ) == 'Yes' || current_user.response_to_question_name( 'will_use_imagery' ).try( :content ) == 'Yes' || current_user.response_to_question_name( 'will_use_name_learning_strategies' ).try( :content ) == 'Yes' %>
        <p>You said you'd be willing to try:</p>
        <ul>

        <% if current_user.response_to_question_name( 'will_use_chunking' ).try( :content ) == 'Yes' %>
            <%= '<li>chunking and categorizing as a way of improving your memory</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_acronyms' ).try( :content ) == 'Yes' %>
            <%= '<li>acronyms as a way of improving your memory</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_rhymes' ).try( :content ) == 'Yes' %>
            <%= '<li>rhymes as a way of improving your memory</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_imagery' ).try( :content ) == 'Yes' %>
            <%= '<li>visual imagery as a way of improving your memory</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name( 'will_use_name_learning_strategies' ).try( :content ) == 'Yes' %>
            <%= '<li>name learning strategies</li>'.html_safe %>
        <% end %>

        </ul>
      <% end %>

      <p>If you had any trouble, 
      <a href='<%= screen_path( id: Category.all[6] ) %>'>review Module 7</a> and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path( id: Category.all[1] ) %>'>Module 2</a>.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s=c.screens.create seq: seq, content: <<-END
     <p>In this module, the first activity is an experiment. You are going to have the opportunity to try four different learning and memory techniques to see what works best for you. </p>

      <p>Get a couple of pieces of paper and a pen or pencil, and when you’re ready, listen to this entire list of words. Try to learn them all, and as soon as the list is finished, write down all the words you can remember.<br/></p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/sd7zGBNe0fY" frameborder="0" allowfullscreen></iframe>
      <center>
    </p>
    END

     puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      The words you just heard are:
      <ul>
        <li>Hammer</li>
        <li>Monkey</li>
        <li>Toyota</li>
        <li>Jazz</li>
        <li>Saw</li>
        <li>Zebra</li>
        <li>Country & Western</li>
        <li>Honda</li>
        <li>Drill</li>
        <li>Giraffe</li>
        <li>Rock n' Roll</li>
        <li>Ford</li>
        <li>Screwdriver</li>
        <li>Classical</li>
        <li>Lion</li>
        <li>Cadillac</li>
      </ul>
    </p>

    END

    q=s.questions.create name: 'how_many_audio_remembered'
    p = q.prompts.create content: "How many did you remember?", prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Here’s a new list of words. Set a timer and study these words for one minute, then put the list out of view and write them down.
      <ul>
        <li>Falcon</li>
        <li>Spark Plug</li>
        <li>Elm</li>
        <li>Eagle</li>
        <li>Diamond</li>
        <li>Hub cap</li>
        <li>Pine</li>
        <li>Maple</li>
        <li>Hawk</li>
        <li>Owl</li>
        <li>Alternator</li>
        <li>Ruby</li>
        <li>Emerald</li>
        <li>Oak</li>
        <li>Sapphire</li>
        <li>Wheel</li>
      </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      The words were:
      <ul>
        <li>Falcon</li>
        <li>Spark Plug</li>
        <li>Elm</li>
        <li>Eagle</li>
        <li>Diamond</li>
        <li>Hub cap</li>
        <li>Pine</li>
        <li>Maple</li>
        <li>Hawk</li>
        <li>Owl</li>
        <li>Alternator</li>
        <li>Ruby</li>
        <li>Emerald</li>
        <li>Oak</li>
        <li>Sapphire</li>
        <li>Wheel</li>
      </ul>
    </p>


    END
    q=s.questions.create name: 'how_many_written_remembered_1'
    p = q.prompts.create content: "How many did you remember?", prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Read the following list of words. Put the words into four categories and write down the categories and the words in each category. Then put all the words out of view and write them down.
      <ul>
        <li>Cat</li>
        <li>Carrot</li>
        <li>Broccoli</li>
        <li>Bread</li>
        <li>Mop</li>
        <li>Hose</li>
        <li>Asparagus</li>
        <li>Milk</li>
        <li>Sponge</li>
        <li>Eggs</li>
        <li>Vacuum</li>
        <li>Dog</li>
        <li>Bird</li>
        <li>Juice</li>
        <li>Hamster</li>
        <li>Onion</li>
      </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      The words were:
      <ul>
        <li>Cat</li>
        <li>Carrot</li>
        <li>Broccoli</li>
        <li>Bread</li>
        <li>Mop</li>
        <li>Hose</li>
        <li>Asparagus</li>
        <li>Milk</li>
        <li>Sponge</li>
        <li>Eggs</li>
        <li>Vacuum</li>
        <li>Dog</li>
        <li>Bird</li>
        <li>Juice</li>
        <li>Hamster</li>
        <li>Onion</li>
      </ul>
    </p>


    END
    q=s.questions.create name: 'how_many_written_remembered_2'
    p = q.prompts.create content: "How many did you remember?", prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      This is the last list of words. Put them into four categories and write down the categories and the words in each category. Then, use visual imagery to create a scene or story involving each category, and draw a picture to go with each category. When you’re done, put all the words and pictures out of view and write down the words from memory.
      <ul>
        <li>Grass</li>
        <li>Chair</li>
        <li>Stapler</li>
        <li>Lawnmower</li>
        <li>Tree</li>
        <li>Eraser</li>
        <li>Pick</li>
        <li>Table</li>
        <li>Pen</li>
        <li>Rake</li>
        <li>Ruler</li>
        <li>Shovel</li>
        <li>Flower</li>
        <li>Sofa</li>
        <li>Shrub</li>
        <li>Bed</li>
      </ul>
    </p>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      The words were:
      <ul>
        <li>Grass</li>
        <li>Chair</li>
        <li>Stapler</li>
        <li>Lawnmower</li>
        <li>Tree</li>
        <li>Eraser</li>
        <li>Pick</li>
        <li>Table</li>
        <li>Pen</li>
        <li>Rake</li>
        <li>Ruler</li>
        <li>Shovel</li>
        <li>Flower</li>
        <li>Sofa</li>
        <li>Shrub</li>
        <li>Bed</li>
      </ul>
    </p>


    END
    q=s.questions.create name: 'how_many_written_remembered_3'
    p = q.prompts.create content: "How many did you remember?", prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Did this exercise convince you that some of these strategies will help you remember more information? What did you notice? What worked best for you?<br/>
      Most people find that just hearing the list once is not enough to memorize all the words. Studying the list can help, as you did with the second list, and categorizing and imagery help even more. For most people, the more effort they devote to learning, the better they remember.<br/>
      That brings us to our next strategy: <strong>Overlearning</strong>. Overlearning is just what it sounds like – it is learning information over and over until it is committed to memory. We overlearn lots of different information: our names, our birthdays, the names of our siblings and parents, the name of our high school, the name of our street, the name of our pets, the order of the letters in the alphabet, the happy birthday song, how to tie our shoes, etc. Anything can be overlearned, and overlearned information is less likely to be forgotten.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      There are many different strategies you can use to overlearn information. <strong>Flashcards</strong> (or flashcard apps) that you carry with you and study throughout the day can work well for learning facts.<br/>
      If you are having trouble, break the learning task down into smaller chunks and learn one chunk at a time.<br/></br>
      Here are some examples:<br/>
      Let’s say you have to memorize the steps of a new task at work. You could write each step on a separate card, then shuffle the cards and put them back in order. You wouldn’t stop after getting it right once, though – overlearning means you keep going over and over the material, even after you know it. In addition to using the flashcards, you would also want to actually do the task repeatedly, in the right order, to memorize it.<br/>
      If you wanted to memorize your medications and their dosages, you could write the name of the medication on one side of the card, and the dosage on the other side. You would start by reading both sides of the card, and as you start to memorize the information, you can quiz yourself by reading only one side of the card.<br/><br/>
      What have you overlearned in your life? When could you use this strategy in the next few months?
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Are you willing to use the overlearning strategy?
    </p>

    END
    q=s.questions.create name: 'will_use_overlearn'
    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      There’s one more area of learning and memory that we haven’t addressed yet: memory retrieval. Retrieval problems mean that the information is in your brain somewhere, but you have difficulty getting it out, for example, a name that’s “on the tip of your tongue.”<br/>
      If this is something that happens to you, here are some tips for retrieving the information you need.<br/></p>
      <p><strong>First, Relax</strong></p>
      <ul>
        <li>Anxiety leads to difficulty retrieving information.</li>
        <li>Using relaxation strategies can enhance memory.</li>
      </ul>
      <p><strong>If you’ve lost an item and you can’t retrieve the memory of where it is, try Mental Retracing</strong></p>
      <ul>
        <li>Mentally retrace your steps and reconstruct the events leading up to when you last had the item.</li>
      </ul>
      <p><strong>If you’re trying to think of a word or a name, try Alphabetic Searching</strong></p>
      <ul>
        <li>Go through the alphabet, starting with A, and ask yourself, “Does it start with A? Does it start with B?” and so on. If you can identify the first letter, use the same process to get to the second letter, and so on.</li>
      </ul>
      <p><strong>If you can remember where you were or what you were doing when you learned the information you want to retrieve, try Recreating the Context</strong></p>
      <ul>
        <li>For example, if you remember that you were eating at a certain restaurant when your friend told you about a class that you wanted to take, recreate that context. Either imagine the restaurant or actually go there, and it will be easier for you to remember the details about the class.</li>
      </ul>
      <p><strong>Finally, Organization is a great way to improve learning, memory, and retrieval.</strong></p>
      <ul>
        <li>Organization in your environment and in your daily routines will help you remember things more easily. Stick to a structured schedule and schedule things you want to do but often have difficulty remembering to do or motivating yourself to do (e.g., medications, exercise, etc.).</li>
        <li>Use “automatic places” for things: locations in your environment where you always keep certain things – that way you will always know where to find them.</li>
        <li>In addition to the home for your stuff, plan automatic places for valuable papers, important phone numbers, and other important information</li>
      </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <h1>Learning and Memory Strategies</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="//www.youtube.com/embed/_BecopfgcgE" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      Now, think back to the goals you wrote down in Module 1. 
    </p>
      <% current_user.goals.each do |goal| %>
        <% unless goal.content.blank? %>
          <li><%= goal.content %></li> 
        <% end %>
      <% end %>
      <p>How can the learning and memory strategies you just reviewed help you reach your goals? <br/>
    </p>

    END
    q=s.questions.create name: 'learning_memory_strategies_thoughts'
    p = q.prompts.create content: "Take a moment to write down your thoughts", prompt_type: 'text_field'

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q=s.questions.create name: 'end_module_8', content: <<-END
    <p>
      That’s the end of Module 8, on learning and memory strategies.
      <strong>Use the overlearning strategy to memorize is the following list of the winners of the Academy Award for Best Picture from 1995 to 1999.</strong>
      <ul>
        <li>
          1995: Braveheart<br/>
          1996: The English Patient<br/>
          1997: Titanic<br/>
          1998: Shakespeare in Love<br/>
          1999: American Beauty
        </li>
        <li>
          Look over your memory strategies and start planning how you will memorize these Oscar winners – you will need to remember not only the titles, but also what year each film won.<br/>
          Which strategies do you plan to use?<br/>
        </li>
        <li>The point of this exercise is to review your memory strategies and to prove to yourself that you can memorize anything you want to, no matter how trivial the information may seem.</li>
      </ul>
      <p>For home practice, be sure to practice these skills.<br/></p>
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: "Overlearning"

    puts "saved question #{q.name}"
    puts "Saved screen #{seq}"
    seq += 1

    ########################################################################################
    # => Module 9
    ########################################################################################

    c = Category.create name: 'Module 9: Cognitive Flexibility and Problem-Solving'

    s = c.screens.create seq: seq, content: <<-END
    <h2>Module 9. Cognitive Flexibility and Problem-Solving</h2>
    <p>
      In this module, we’re going to focus on cognitive flexibility, or the ability to think flexibly.
      <ul>
        <li>Sometimes, people have trouble with problem solving because their thinking style can be rigid. For example, they may see only one way to solve a problem, when in fact there are many ways. They may get “stuck” on an idea.</li>
        <li>We will use a problem-solving method that will help you think as flexibly as possible.</li>
        <li>One of the key parts of the problem-solving method is brainstorming.</li>
      </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.

      <% if current_user.response_to_question_name( 'will_use_overlearn' ) == 'Yes' %> 
        <p>You said you'd be willing to try:
        <ul>
          <%= '<li>overlearning</li>'.html_safe %>

        </ul>
      <% end %>

      <p>
      If you had any trouble, 
      <a href='<%= screen_path( id: Category.all[7].screens.first.seq ) %>'>review Module 8</a> and see if you can make improvements.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Brainstorming just means coming up with as many ideas as possible on a particular topic. We are going to use brainstorming to come up with as many solutions as possible for a particular problem. Keep these guidelines in mind for effective brainstorming:
      <ul>
        <li>Think up as many ideas as possible without making judgments about them.</li>
        <li>Don’t edit out any ideas because they seem silly or bad. Just let the ideas keep coming because you never know when a “silly” idea will trigger a good one.</li>
      </ul>
      <p>Let’s practice. Try to come up with at least 30 ideas for all the items you would need or want for painting a room. Write them down as they come to you.</p>
    </p>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Did you get 30? If you didn’t, here are some hints to help you think of more items:
      <ul>
        <li>What items would make the painting job go faster?</li>
        <li>What items would make the painting job easier to clean up?</li>
        <li>What items would make the painting job go more quickly?</li>
        <li>What items would make the painting job more fun?</li>
      </ul>
      <p>Keep going with your brainstorming. Remember to avoid judging or editing your ideas – just let them come to you.</p>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Here’s another opportunity to get creative with your brainstorming. Try to come up with 30 ways to get a cat out of a tree. Write them down, and remember not to evaluate your ideas. You may notice that some silly or impractical ideas may trigger some good ideas.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Did you come up with some interesting ways to get the cat out of the tree? One method many people miss is doing nothing and letting the cat get out of the tree on its own. Sometimes, doing nothing and letting a problem work itself out can be a valid and effective solution, as it might be for the cat in the tree situation.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Are you willing to use the brainstorming strategy?
    </p>

    END
    q=s.questions.create name: 'will_use_brainstorming'

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Now that you’ve had some practice with brainstorming, we’ll introduce the 6-Step Problem-Solving Method, which has the acronym DBESTE to help you remember the steps. What problem-solving method do you want to use? DBESTE one, of course!<br/>
      <strong>The 6-step problem solving method (DBESTE)</strong>
      <ol>
        <li><u><strong>D</strong>efine</u> the problem.</li>
        <li><u><strong>B</strong>rainstorm</u> solutions to the problem.</li>
        <li><u><strong>E</strong>valuate</u> each solution in terms of ease of implementation, costs and benefits, and likely consequences.</li>
        <li><u><strong>S</strong>elect</u> a solution to try.</li>
        <li><u><strong>T</strong>ry</u> the solution.</li>
        <li><u><strong>E</strong>valuate</u> the solution: Did it work? Do you need to try another one? If so, go back to step 4.</li>
      </ol>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <h1>6-Step Problem-Solving Method</h1>
    </p>
    <p>
      <center>
      <iframe width="560" height="315" src="//www.youtube.com/embed/7GAC-QBKSTM" frameborder="0" allowfullscreen></iframe>
      </center>
    </p>

    <!--
    <p>
      Example: The rent is due today and I am $20 short.
      <ol>
        <li><strong>D</strong>efine the problem: Need $20 more to pay rent.</li>
        <li><strong>B</strong>rainstorm solutions:
          <ol>
            <li>Ask landlord for an extension</li>
            <li>Ask my boss for an extra shift and a cash advance of $20</li>
            <li>Tell landlord I will have to move because you can’t afford the rent</li>
            <li>Ask landlord if I can pay $20 less this month in exchange for doing some repairs to the apartment</li>
            <li>Say nothing and wait until I have the $20 to pay the rent</li>
          </ol>
        </li>
        <li><strong>E</strong>valuate the solutions:
          <ol>
            <li>The landlord hasn’t agreed to that in the past – unlikely to work</li>
            <li>Possible – they’ve been needing extra help at work</li>
            <li>Not really a good option – moving is expensive, and other apartments cost as much as mine</li>
            <li>Possible – there is some stucco on the apartment building that needs patching</li>
            <li>Not a good idea – the landlord could evict me if I don’t pay the rent on time</li>
          </ol>
        </li>
        <li><strong>S</strong>elect a solution to try - I decide to try Solution “d.”</li>
        <li><strong>T</strong>ry the solution - I call the landlord and explain the situation, offering to repair the stucco.</li>
      </ol>
    </p>
    -->

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      The goal is to use the 6-step problem solving method quickly when you need it. Being able to do this requires practice it until it becomes automatic. Practice the steps of the 6-step problem solving method with a couple of sample scenarios that follow.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h2>
      6-Step Problem-Solving Worksheet Examples
    </h2>
    <p>
      <strong><a href="https://s3.amazonaws.com/cogsmart/6-step-new-job.pdf" target="_blank">Click here to download the First Sample 6-Step Problem-Solving Worksheet</a></strong>
    </p>
    <p>
      <strong><a href="https://s3.amazonaws.com/cogsmart/6-step-old-friend.pdf" target="_blank">Click here to download the Second Sample 6-Step Problem-Solving Worksheet</a></strong>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h2>6-Step Problem-Solving Worksheet</h2>
    <p>
      Spend some time filling out the problem-solving worksheets that you downloaded from the last screen before moving on.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <h2>
      6-Step Problem-Solving
    </h2>
    <p>
       Now let’s try the 6-Step Problem-Solving Method with a real-life problem. If you’re having trouble coming up with a problem to solve, try thinking about areas of your life in which you’re not completely satisfied. Most people have some areas they would like to see improved, such as living situation, work or school, friendships or romantic relationships, health, or finances.<br/>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1



    s = c.screens.create seq: seq
    q = s.questions.create name: 'end_of_module_9', content: <<-END
    <p>
      That’s the end of Module 9, on cognitive flexibility. For home practice, be sure to practice these skills.<br/>

      <strong>Practice just the brainstorming part of the problem-solving method. Pick an everyday activity and write down as many ways to do it as you can think of – next session, we can see who came up with the longest list.</strong>
        <ul>
          <li>You can do this even if you don’t have a problem to solve – you can brainstorm in almost any situation (e.g., making a sandwich, watching television, making an appointment). Applying your brainstorming technique to these everyday situations may seem a little silly at first, but practicing brainstorming will increase your ability to think creatively, and the ability will come more naturally when you need it to solve problems.</li>
        </ul>
      <p>
      Practice using the 6-step problem-solving method using the fillable form on the next screen. <br/>
      Think of a problem you’d like to try to solve and write it down here:<br/>
    </p>

    END

    p = q.prompts.create prompt_type: 'text_field'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <h2>6-Step Problem-Solving Worksheet</h2>
    <p>
      <strong><a href="https://s3-us-west-1.amazonaws.com/cogsmart-website/Problem+Solving+Worksheet.pdf" target="_blank">Click here to download the 6-Step Problem-Solving Worksheet</a></strong>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    ########################################################################################
    # => Module 10
    ########################################################################################

    c = Category.create name: 'Module 10: Cognitive Flexibility and Problem-Solving'

    s = c.screens.create seq: seq, content: <<-END
    <h2>Module 10. Cognitive Flexibility and Problem-Solving</h2>
    <p>
      This module is going to continue our focus on cognitive flexibility and problem-solving. We hope your experience with brainstorming and using the 6-step problem-solving method has convinced you that you can be a creative problem-solver. This next activity is going to require some of that creativity!<br/>
      Grab about 20 cards from a deck of cards. (If you don’t have one, try a stack of books or magazines or CDs or DVDs.)  Take a moment to look at what you have in front of you, and see if you can brainstorm at least 10 different ways to sort your items into two groups.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.

      <% if current_user.response_to_question_name( 'will_use_brainstorming' ).try( :content ) == 'Yes' %>  
        <p>You said you'd be willing to try:
        <ul>
            <%= '<li>brainstorming</li>'.html_safe %>
        </ul>
      <% end %>

      <p>If you had any trouble, 
      <a href='<%= screen_path( id: Category.all[8].screens.first.seq ) %>'>review Module 9</a> and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path( id: Category.all[1].screens.first.seq ) %>'>Module 2</a>.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Another tool that will help you as you’re solving problems is using self-talk while you solve the problem. Talk to yourself about the problem and the strategy or strategies you’re using to solve it. Here are some sample problems you can use to practice this technique.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <h1>Self-talk</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="//www.youtube.com/embed/UPJKpeYvnU0" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    <!-- Move this question to screen 218

    <p>
      Which of the six choices below should go in the empty space of this puzzle? Talk out loud about what you see in the puzzle, then talk out loud about the choices below as you arrive at your answer.<br/>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle1.jpg', :class => "puzzle-img"}
      </center>
      </br>
      <strong>Possible solutions:</strong>
      </br>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle1a.jpg', :class => "puzzle-img"}
      </center>
    </p>

    -->

    END
    # q=s.questions.create name: 'puzzle1'

    # p = q.prompts.create content: "A", prompt_type: 'radio'
    # p = q.prompts.create content: "B", prompt_type: 'radio'
    # p = q.prompts.create content: "C", prompt_type: 'radio'
    # p = q.prompts.create content: "D", prompt_type: 'radio'
    # p = q.prompts.create content: "E", prompt_type: 'radio'
    # p = q.prompts.create content: "F", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Now try this one. Which of the six choices below should go in the empty space of this puzzle? Talk out loud about what you see in the puzzle, then talk out loud about the choices below as you arrive at your answer.
    </p>
    <p>
      Again, talk out loud about the problem as well as the choices below.<br/>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle2.jpg', :class => "puzzle-img"}
      </center>
      </br>
      <p><strong>Possible solutions:</strong></p>
      </br>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle2a.jpg', :class => "puzzle-img"}
      </center>
    </p>

    END
    q=s.questions.create name: 'puzzle2'

    p = q.prompts.create content: "A", prompt_type: 'radio'
    p = q.prompts.create content: "B", prompt_type: 'radio'
    p = q.prompts.create content: "C", prompt_type: 'radio'
    p = q.prompts.create content: "D", prompt_type: 'radio'
    p = q.prompts.create content: "E", prompt_type: 'radio'
    p = q.prompts.create content: "F", prompt_type: 'radio', correct: true

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Are you willing to use the self-talk strategy for problem-solving?
    </p>

    END
    q=s.questions.create name: 'will_use_self_talk'

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Another tool to use in your problem solving is called hypothesis testing. This just means testing an idea (your hypothesis) to see if it works or not. To do this, you have to think flexibly about whether your idea might be right or wrong, or whether your strategy for solving a given problem might be effective or ineffective. Thinking flexibly means gathering both “pro” and “con” evidence that your idea is working.
    </p>
    <p>
      Remember:
      <ul>
        <li>
          <strong>Gather evidence about your idea:</strong>
          <ul>
            <li>Look for evidence that your idea is <strong>right</strong></li>
            <li>Look for evidence that your idea is <strong>wrong</strong></li>
          </ul>
        </li>
        <li><strong>Make a final decision.</strong></li>
      </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Self-talk and hypothesis testing work best together. Remember, the two skills are:
      <ul>
        <li><strong>Talk out loud about what strategy you are using</strong></li>
        <li><strong>Talk out loud about what hypothesis you are testing, and what the pro and con evidence is</strong></li>
      </ul>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <h1>Self-talk</h1>
    </p>

    <!--
    <p>
    <center>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/IAMdMmWoeqg" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    -->



    <p>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle3.jpg', :class => "puzzle-img"}
      </center>
      </br>
      <p><strong>Possible solutions:</strong></p>
      </br>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle3a.jpg', :class => "puzzle-img"}
      </center>
    </p>

    END
    q=s.questions.create name: 'puzzle3'

    p = q.prompts.create content: "A", prompt_type: 'radio'
    p = q.prompts.create content: "B", prompt_type: 'radio'
    p = q.prompts.create content: "C", prompt_type: 'radio'
    p = q.prompts.create content: "D", prompt_type: 'radio'
    p = q.prompts.create content: "E", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "F", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Try this puzzle now. Remember, talk out loud about your strategy and the pro and con evidence for your answer!
    </p>
    <p>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle4.jpg', :class => "puzzle-img"}
      </center>
      </br>
      <p><strong>Possible solutions:</strong></p>
      </br>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle4a.jpg', :class => "puzzle-img"}
      </center>
    </p>

    END
    q=s.questions.create name: 'puzzle4'

    p = q.prompts.create content: "A", prompt_type: 'radio'
    p = q.prompts.create content: "B", prompt_type: 'radio'
    p = q.prompts.create content: "C", prompt_type: 'radio'
    p = q.prompts.create content: "D", prompt_type: 'radio'
    p = q.prompts.create content: "E", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "F", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Here’s another puzzle. Remember to talk out loud about your strategy and the pro and con evidence for your answer!
    </p>
    <p>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle5.jpg', :class => "puzzle-img"}
      </center>
      </br>
      <p><strong>Possible solutions:</strong></p>
      </br>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle5a.jpg', :class => "puzzle-img"}
      </center>
    </p>

    END
    q=s.questions.create name: 'puzzle5'

    p = q.prompts.create content: "A", prompt_type: 'radio'
    p = q.prompts.create content: "B", prompt_type: 'radio'
    p = q.prompts.create content: "C", prompt_type: 'radio'
    p = q.prompts.create content: "D", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "E", prompt_type: 'radio'
    p = q.prompts.create content: "F", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Here’s the last puzzle. Remember to talk out loud about your strategy and the pro and con evidence for your answer!
    </p>
    <p>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle6.jpg', :class => "puzzle-img"}
      </center>
      </br>
      <p><strong>Possible solutions:</strong></p>
      </br>
      <center>
        #{ActionController::Base.helpers.image_tag 'puzzles/puzzle6a.jpg', :class => "puzzle-img"}
      </center>
    </p>

    END
    q=s.questions.create name: 'puzzle6'

    p = q.prompts.create content: "A", prompt_type: 'radio', correct: true
    p = q.prompts.create content: "B", prompt_type: 'radio'
    p = q.prompts.create content: "C", prompt_type: 'radio'
    p = q.prompts.create content: "D", prompt_type: 'radio'
    p = q.prompts.create content: "E", prompt_type: 'radio'
    p = q.prompts.create content: "F", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Are you willing to use the hypothesis testing strategy for problem-solving?
    </p>

    END

    q = s.questions.create name: 'will_use_hypothesis_testing'

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'end_of_module_10', content: <<-END
    <p>
      That’s the end of Module 10, on cognitive flexibility. For home practice, be sure to practice these skills.
    </p>

    END

    q.prompts.create prompt_type: 'checkbox', content: 'Hypothesis testing'
    q.prompts.create prompt_type: 'checkbox', content: 'Self-talk during tasks'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'practice_6_step', content: <<-END
    <p>
      <strong>Practice using the 6-step problem-solving method.</strong> Think of a problem you’d like to try to solve and write it down:<br/>
    </p>

    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_1', content: <<-END
    <p>
      This time we are going to focus on self talk while solving the problem. Also, use your hypothesis testing skills to identify the pros and cons of your problem-solving idea.
      <strong>There are also some additional opportunities to practice self-talk and hypothesis testing as you problem-solve. The next few screens present some words that you can sort into the best categories you can think of. Come up with a category name for each group. Remember to use self-talk as you sort the words, then use hypothesis testing to make sure your sort is accurate.  Here is an example:</strong><br/>
      <br/>
      MARCH&nbsp;&nbsp;
      GOOSE&nbsp;&nbsp;
      PAPER&nbsp;&nbsp;
      COW&nbsp;&nbsp;
      &nbsp;&nbsp;
      CHICKEN&nbsp;&nbsp;
      DESK&nbsp;&nbsp;
      JANUARY&nbsp;&nbsp;
      APRIL&nbsp;&nbsp;
      HORSE&nbsp;&nbsp;
      &nbsp;&nbsp;
      BULL&nbsp;&nbsp;
      TYPEWRITER&nbsp;&nbsp;
      CHAIR&nbsp;&nbsp;
      FEBRUARY&nbsp;&nbsp;
    </p>

    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_2', content: <<-END
    <p>
      WALLS&nbsp;&nbsp;
      DOORS&nbsp;&nbsp;
      SECRETARY&nbsp;&nbsp;
      &nbsp;&nbsp;
      WINDOWS&nbsp;&nbsp;
      &nbsp;&nbsp;
      NURSE&nbsp;&nbsp;
      PAINT &nbsp;&nbsp;
      LAWYER&nbsp;&nbsp;
      &nbsp;&nbsp;
      &nbsp;&nbsp;
      DOCTOR&nbsp;&nbsp;
      &nbsp;&nbsp;
      WOOD&nbsp;&nbsp;
      BRICKS  &nbsp;&nbsp;
      &nbsp;&nbsp;
    </p>

    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_4', content: <<-END
    <p>
      EIGHT &nbsp;&nbsp;
      B  &nbsp;&nbsp;
      CCCC &nbsp;&nbsp;
       &nbsp;&nbsp;
      DD &nbsp;&nbsp;
      BB &nbsp;&nbsp;
       &nbsp;&nbsp;
       &nbsp;&nbsp;
      C &nbsp;&nbsp;
       &nbsp;&nbsp;
      TWO  &nbsp;&nbsp;
      CC &nbsp;&nbsp;
       &nbsp;&nbsp;
      BBB &nbsp;&nbsp;
      DDD &nbsp;&nbsp;
       &nbsp;&nbsp;
       &nbsp;&nbsp;
      D &nbsp;&nbsp;
      BBBB &nbsp;&nbsp;
      CCC &nbsp;&nbsp;
      DDDD &nbsp;&nbsp;
       &nbsp;&nbsp;
      TEN  &nbsp;&nbsp;
      FOUR &nbsp;&nbsp;
       &nbsp;&nbsp;
      SIX &nbsp;&nbsp;
    </p>
    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_5', content: <<-END
    <p>
      1 &nbsp;&nbsp;
      OCEAN &nbsp;&nbsp;
       &nbsp;&nbsp;
      CUP &nbsp;&nbsp;
      RIVER &nbsp;&nbsp;
      333 &nbsp;&nbsp;
       &nbsp;&nbsp;
      22 &nbsp;&nbsp;
       &nbsp;&nbsp;
      SAUCER &nbsp;&nbsp;
       &nbsp;&nbsp;
       &nbsp;&nbsp;
      PLATE &nbsp;&nbsp;
       &nbsp;&nbsp;
      LAKE &nbsp;&nbsp;
      FORK &nbsp;&nbsp;
       &nbsp;&nbsp;
      CREEK &nbsp;&nbsp;
      4444 &nbsp;&nbsp;
       &nbsp;&nbsp;
       &nbsp;&nbsp;
      KNIFE &nbsp;&nbsp;
       &nbsp;&nbsp;
      BEACH  &nbsp;&nbsp;
      55555 &nbsp;&nbsp;
    </p>
    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_6', content: <<-END
    <p>
      CAT  &nbsp;&nbsp;
      FISH &nbsp;&nbsp;
      MARS &nbsp;&nbsp;
      EARTH &nbsp;&nbsp;
       &nbsp;&nbsp;
       &nbsp;&nbsp;
      SHARK &nbsp;&nbsp;
      BIRD &nbsp;&nbsp;
      FOX &nbsp;&nbsp;
       &nbsp;&nbsp;
      SATURN &nbsp;&nbsp;
       &nbsp;&nbsp;
      RABBIT &nbsp;&nbsp;
       &nbsp;&nbsp;
      MICE &nbsp;&nbsp;
       &nbsp;&nbsp;
      JUPITER &nbsp;&nbsp;
      NEPTUNE &nbsp;&nbsp;
      WORM &nbsp;&nbsp;
    </p>
    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_7', content: <<-END
    <p>
      TROUSERS &nbsp;&nbsp;
      ZERO &nbsp;&nbsp;
       &nbsp;&nbsp;
      SHIRT &nbsp;&nbsp;
      HORSE &nbsp;&nbsp;
      FOUR &nbsp;&nbsp;
       &nbsp;&nbsp;
      TIE &nbsp;&nbsp;
      TWO &nbsp;&nbsp;
       &nbsp;&nbsp;
      COW &nbsp;&nbsp;
      BELT &nbsp;&nbsp;
       &nbsp;&nbsp;
      SIX &nbsp;&nbsp;
      HAT &nbsp;&nbsp;
       &nbsp;&nbsp;
      EIGHT &nbsp;&nbsp;
      PIG &nbsp;&nbsp;
       &nbsp;&nbsp;
      CHICKEN &nbsp;&nbsp;
      DUCK &nbsp;&nbsp;
    </p>
    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_8', content: <<-END
    <p>
      YEAR &nbsp;&nbsp;
      MINUTE &nbsp;&nbsp;
       &nbsp;&nbsp;
      EYE &nbsp;&nbsp;
      LEG &nbsp;&nbsp;
       &nbsp;&nbsp;
      ARM &nbsp;&nbsp;
       &nbsp;&nbsp;
      YELLOW &nbsp;&nbsp;
      GREEN &nbsp;&nbsp;
      HAND &nbsp;&nbsp;
       &nbsp;&nbsp;
      EAR &nbsp;&nbsp;
      MONTH &nbsp;&nbsp;
      WEEK &nbsp;&nbsp;
      BLUE &nbsp;&nbsp;
      FOOT &nbsp;&nbsp;
       &nbsp;&nbsp;
      HEAD &nbsp;&nbsp;
      RED &nbsp;&nbsp;
    </p>
    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    s = c.screens.create seq: seq
    q = s.questions.create name: 'hypothesis_testing_9', content: <<-END
    <p>
      BADGER &nbsp;&nbsp;
      PIANO &nbsp;&nbsp;
      GUITAR &nbsp;&nbsp;
       &nbsp;&nbsp;
      VIOLIN &nbsp;&nbsp;
      FOX &nbsp;&nbsp;
      OAK &nbsp;&nbsp;
      ELM &nbsp;&nbsp;
      ASH &nbsp;&nbsp;
      PINE &nbsp;&nbsp;
       &nbsp;&nbsp;
      CELLO &nbsp;&nbsp;
      FLUTE &nbsp;&nbsp;
       &nbsp;&nbsp;
      BEECH &nbsp;&nbsp;
      RABBIT &nbsp;&nbsp;
       &nbsp;&nbsp;
      HARE &nbsp;&nbsp;
      TRUMPET &nbsp;&nbsp;
      SQUIRREL &nbsp;&nbsp;
       &nbsp;&nbsp;
      MOUSE &nbsp;&nbsp;
      HARP &nbsp;&nbsp;
       &nbsp;&nbsp;
    </p>
    END

    q.prompts.create prompt_type: 'text_area'

    puts "Saved question: #{q.name}"
    puts "Saved screen #{seq}"

    seq += 1

    ######################################################################################
    # => Module 11
    ######################################################################################

    c = Category.create name: 'Module 11: Cognitive Flexibility, Problem-Solving, and Planning'

    s = c.screens.create seq: seq, content: <<-END
    <h2>Module 11. Cognitive Flexibility, Problem-Solving, and Planning</h2>
    <p>
      Let’s review the 6-Step Problem-Solving Method you’ve been using.<br/>
      <strong>The 6-step problem solving method (DBESTE)</strong>
      <ol>
        <li><u><strong>D</strong>efine</u> the problem.</li>
        <li><u><strong>B</strong>rainstorm</u> solutions to the problem.</li>
        <li><u><strong>E</strong>valuate</u> each solution in terms of ease of implementation, costs and benefits, and likely consequences.</li>
        <li><u><strong>S</strong>elect</u> a solution to try.</li>
        <li><u><strong>T</strong>ry</u> the solution.</li>
        <li><u><strong>E</strong>valuate</u> the solution: Did it work? Do you need  to try another one? If so, go back to step 4.</li>
      </ol>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.<br/>
      <% if current_user.response_to_question_name('will_use_self_talk').try( :content ) == 'Yes' || current_user.response_to_question_name('will_use_hypothesis_testing').try( :content ) == 'Yes' %>
        <p>You said you'd be willing to:
        <ul>
        <% if current_user.response_to_question_name('will_use_self_talk').try( :content ) == 'Yes' %>
            <%= '<li>use self-talk during tasks</li>'.html_safe %>
        <% end %>

        <% if current_user.response_to_question_name('will_use_hypothesis_testing').try( :content ) == 'Yes' %>
            <%= '<li>use hypothesis testing</li>'.html_safe %>
        <% end %>

        </ul>
      <% end %>

       <p>If you had any trouble, 
    <a href='<%= screen_path(id: Category.all[9].screens.first.seq)%>'>review Module 10</a> and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path(id: Category.all[1].screens.first.seq)%>'>Module 2</a>.
    </p>

    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <ul>
        <li>Step 6 of the problem solving method is “Evaluate”.</li>
        <li>
          Self-monitoring is a way of taking a step back and evaluating your problem solving strategy to make sure it is effective.
          <ul>
            <li>If a strategy is working, you want to keep using it.</li>
            <li>If a strategy is not working, you want to shift strategies.</li>
          </ul>
        </li>
        <li>If something is not working or you find yourself frustrated, it is a good time to take a step back.</li>
        <li>Be sure to gather evidence that you are wrong, as well as evidence that you are right.</li>
      </ul>
      <p>Once you figure out if your strategy is working or not, you can then decide to maintain that strategy or to switch that strategy.</p>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      If you conclude that your strategy is working, and you are effectively solving the problem, all you have to do is remind yourself to stay focused and stick to that strategy. <br/>
      If you conclude that your strategy is not working, you want to avoid making the same mistakes more than once, so you’ll want to switch strategies. <br/>
      It helps to keep this flow-chart in mind. It may seem obvious, but in the heat of the moment or when you’re busy, it’s easy to get stuck in a rut and keep doing the same thing, even if it isn’t working very well.<br/>
    </p>

    <p>
    <center>
    #{ActionController::Base.helpers.image_tag 'flowchart.jpg', style: 'max-width:480px;' }
    </center>
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      This flow-chart can be used to evaluate your strategy while working on small problems (like scoring points in a video game), medium problems (like trouble-shooting a computer), or big problems (like communicating with your partner or figuring out an effective way to lose weight). Take a moment to think about some of the small, medium, or big problems in your own life. How could it be helpful to take a step back to look at the situation and evaluate your strategy?
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      The next part of problem-solving we’ll focus on is planning to meet goals and deadlines. Are you ever bothered by not getting things done? Take a moment to think about a goal or deadline you have coming up. Have your calendar handy.
    </p>
    <p>
      First, you want to define the goal or deadline in measurable, concrete terms (e.g., “By December 10, I will have all of my holiday cards mailed out”).
    </p>
    <p>
      Next, brainstorm the steps needed to meet the goal or deadline – it may help to “work backwards” from your goal.
    </p>
    <p>
      Then, make sure all the steps are in the right order and figure out when each step must be completed by in order for you to meet the goal or deadline.
    </p>
    <p>
      Finally, schedule times in your calendar to complete the steps. Allow a bit more time than you think you need to accomplish each step; urgent matters may come up and interfere with your progress, so allow some leeway.
    </p>
    <p>
      As you are completing the steps toward your goal, review the timeline of future steps to make sure the timeline is still realistic. You may have to re-order your steps or add additional steps.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <h1>CogSMART Domains and Life Goals</h1>
    </p>
    <p>
    <center>
    <iframe width="560" height="315" src="//www.youtube.com/embed/vCJRsccStI8" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>
    
    <!--
    <p>
      Here is an example:<br/>
      <strong>Goal:</strong> By December 10, I will have all of my holiday cards mailed out.
    </p>
    <table>
      <tr>
        <th>Target Date</th>
        <th>Step</th>
      </tr>
      <tr>
        <td>11/1</td>
        <td>Make a list of card recipients and addresses.</td>
      </tr>
      <tr>
        <td>11/5</td>
        <td>Purchase holiday cards.</td>
      </tr>
      <tr>
        <td>11/10</td>
        <td>Start writing cards, 30 minutes per night.</td>
      </tr>
      <tr>
        <td>11/20</td>
        <td>Have 50% of cards written.</td>
      </tr>
      <tr>
        <td>11/25</td>
        <td>Obtain any missing addresses.</td>
      </tr>
      <tr>
        <td>12/1</td>
        <td>Have all cards written and addressed.</td>
      </tr>
      <tr>
        <td>12/5</td>
        <td>Purchase stamps.</td>
      </tr>
      <tr>
        <td>12/10</td>
        <td>Mail cards.</td>
      </tr>
    </table>

    -->

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Now, use the worksheet on the following screen to plan out an important goal. Transfer tasks/dates into your calendar.
    </p>

    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      <a href='https://s3.amazonaws.com/cogsmart/goal_planning_worksheet.pdf'>Click here to download a printable copy of this worksheet</a>.
    </p>
      
     <p><strong>Define the goal or project and date:</strong></p>
    <p>
      <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>
      <br>
      <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>
    <br>
          <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>

    </p>

    <table style='border: 1px #aaa solid' class='table'>
    <thead>
    <th style='width:15%;border-right: 1px #aaa solid;'><strong>Target Date</strong></th>
    <th><strong>Step</strong></th>
    </thead>
    <tbody>
      <tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr>
      <tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr>
    </tbody>
    </table>
    END

    # q=s.questions.create name: 'define_goal'
    # p=q.prompts.create content: 'define goal and date:', prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      Are you willing to use the planning strategy?
    </p>

    END

    q = s.questions.create name: 'will_use_planning'

    p = q.prompts.create content: "Yes", prompt_type: 'radio'
    p = q.prompts.create content: "No", prompt_type: 'radio'
    p = q.prompts.create content: "Already Use this Strategy", prompt_type: 'radio'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Now, think back to the goals you wrote down in Module 1. 
      </p>
      <% current_user.goals.each do |goal| %>
        <% unless goal.content.blank? %>
          <li><%= goal.content %></li> 
        <% end %>
      <% end %>
      <p>How can the cognitive flexibility and problem solving strategies help you reach your goals? <br/>
    </p>

    END
    q=s.questions.create name: 'how_strategies_can_help_goals'
    p=q.prompts.create content: 'Take a moment to write down your thoughts:', prompt_type: 'text_area'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
      That’s the end of Module 11, on cognitive flexibility, problem-solving, and planning. For home practice, be sure to practice these skills.<br/>
      <br/>
      <strong>Practice self-monitoring strategies. Think of a problem that you’d like to use self-monitoring with, and write it down:</strong>
    </p>

    END
    q=s.questions.create name: 'practice_self_monitoring'
    p=q.prompts.create content: 'Think of a problem that you’d like to use self-monitoring with', prompt_type: 'text_area'

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      <strong>Now use the 6-step problem-solving method and focus particularly on self-monitoring as you evaluate your solution to the problem.</strong><br/>
       <strong>You can also use self-monitoring in conversations.</strong> Have you ever noticed that sometimes a conversation can get in a rut? Sometimes, you might notice that you’re repeating yourself, or that the person you’re talking to just doesn’t understand you no matter how much you repeat the information. Those are times when you can ask yourself:
       <ul>
        <li>Is what I’m saying making sense?</li>
        <li>Am I repeating myself?</li>
        <li>Am I getting stuck or coming back to the same topic over and over?</li>
        <li>Do I need to shift to a different topic, or a different way of saying things, so I can be understood better?</li>
        <li>Am I moving from topic to topic without answering the question?</li>
        <li>Do I need to stick to the topic better?</li>
       </ul>
       <strong>This week, try introducing some self-monitoring into your conversations, and see how it works for you.</strong></br>
    </p>
    END
    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      <strong>Use the planning sheets to plan out the steps of any important goals or deadlines you have.</strong><br/>
    </p>
    <p>
      <a href='https://s3.amazonaws.com/cogsmart/goal_planning_worksheet.pdf'>Click here to download a printable copy of this worksheet</a>.
    </p>
    <p>
      <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>
      <br>
      <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>
    <br>
          <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>

    </p>

    <table style='border: 1px #aaa solid' class='table'>
    <thead>
    <th style='width:15%;border-right: 1px #aaa solid;'><strong>Target Date</strong></th>
    <th><strong>Step</strong></th>
    </thead>
    <tbody>
      <tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr>
      <tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr>
    </tbody>
    </table>

    END

    # q=s.questions.create name: 'goal_and_date'
    # p=q.prompts.create content: 'Define the goal or project and date', prompt_type: 'text_area'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      <strong>Add a second goal or project.</strong><br/>
      <p>
      <a href='https://s3.amazonaws.com/cogsmart/goal_planning_worksheet.pdf'>Click here to download a printable copy of this worksheet</a>.
    </p>
    <p>
      <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>
      <br>
      <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>
    <br>
          <u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u>

    </p>

    <table style='border: 1px #aaa solid' class='table'>
    <thead>
    <th style='width:15%;border-right: 1px #aaa solid;'><strong>Target Date</strong></th>
    <th><strong>Step</strong></th>
    </thead>
    <tbody>
      <tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr>
      <tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr><tr style='width:15%;height:36px;'>
      <td style='border-right: 1px #aaa solid;' ></td>
      <td></td>
      </tr>
    </tbody>
    </table>
    </p>

    END

    # q=s.questions.create name: 'goal_and_date2'
    # p=q.prompts.create content: 'Define the goal or project and date', prompt_type: 'text_area'

    puts "Saved screen #{seq}"
    seq += 1


    ##############################################################################################
    # => Module 12
    ##############################################################################################

    c = Category.create name: 'Module 12: Skills Integration, Review, and Next Steps'

    s = c.screens.create seq: seq, content: <<-END
    <h1>Module 12. Skills Integration, Review, and Next Steps</h1>
    END

    puts "Saved screen #{seq}"
    seq += 1


    s = c.screens.create seq: seq, content: <<-END
    <p>
      How did your home practice go?<br/>
      Remember to check off the home practice activities you did.<br/>
      <% if current_user.response_to_question_name('will_use_planning').try( :content ) == 'Yes' %>
        <p>You said you'd be willing to:
        <ul>
          <%= '<li>use the planning strategy</li>'.html_safe %>
        </ul>
      <% end %>
    <p>If you had any trouble, 
    <a href='<%= screen_path(id: Category.all[10].screens.first.seq)%>'>review Module 11</a> and see if you can make improvements. If you’re still having trouble remembering to check your calendar, review the suggestions in <a href='<%= screen_path(id: Category.all[1].screens.first.seq)%>'>Module 2</a>.
    </p>


    END

    puts "Saved screen #{seq}"
    seq += 1

    

    s = c.screens.create seq: seq, content: <<-END
    <p>
      Think back to the goals you wrote down in Module 1. 
      <% current_user.goals.each do |goal| %>
        <% unless goal.content.blank? %>
          <li><%= goal.content %></li> 
        <% end %>
      <% end %>
      </p>
      <p>
      What strategies are you using that will help you reach your goals? What other strategies could you use that would be helpful? How will you use these new strategies in your life? Take a few moments to do some writing in the table below.
    </p>
    <p>
      Use the following two boxes to enter the strategies you're already using, and the strategies that you'd like to use:
    </p>

    END

    q=s.questions.create name: 'using_vs_want_to_use'
    p=q.prompts.create content: "Strategies I'm using:", prompt_type: 'text_area'
    p=q.prompts.create content: "Strategies I want to use:", prompt_type: 'text_area'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      Name one <u>organization or prospective memory strategy</u> you would like to focus on over the next month:<br/>
    </p>

    END

    q=s.questions.create name: 'wrap_up_1'
    p=q.prompts.create content: 'Answer here:', prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      Name one <u>attention strategy</u> you would like to focus on over the next month:<br/>
    </p>

    END

    q=s.questions.create name: 'wrap_up_2'
    p=q.prompts.create content: 'Answer here:', prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      Name one <u>learning or memory strategy</u> you would like to focus on over the next month:<br/>
    </p>

    END

    q=s.questions.create name: 'wrap_up_3'
    p=q.prompts.create content: 'Answer here:', prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      Name one <u>problem-solving strategy</u> you would like to focus on over the next month:<br/>
    </p>

    END

    q=s.questions.create name: 'wrap_up_4'
    p=q.prompts.create content: 'Answer here:', prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      In the future, if you find you are having significant problems related to cognitive issues, what can you do to address them?<br/>
    </p>

    END

    q=s.questions.create name: 'wrap_up_5'
    p=q.prompts.create content: 'Answer here:', prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      What do you think your friends, family, and support persons can do from here on out to best support you as you continue to work on skills to help you manage your cognitive difficulties?<br/>
    </p>

    END

    q=s.questions.create name: 'wrap_up_6'
    p=q.prompts.create content: 'Answer here:', prompt_type: 'text_field'

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END

    <p>
      It’s important to remember that just because you’ve completed all of the CogSMART modules does not mean that you should stop practicing these skills. Learning and using these skills is a lifelong process!
    </p>
    <br>
    END

    puts "Saved screen #{seq}"
    seq += 1

    s = c.screens.create seq: seq, content: <<-END
    <p>
    <center>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/ABikQhzCCDA" frameborder="0" allowfullscreen></iframe>
    </center>
    </p>

    <p>
    You’ve now learned a lot of new strategies to help you improve your thinking and memory skills. Here is a list of all the strategies we’ve covered. Please feel free to review any of the strategies that you’re not using yet.
    </p>

    <ul>
      <li><a href='<%= screen_path( id: Question.find_by( name: 'will_you_make_home_for_stuff' ).screen.seq ) %>'>Make a home for your stuff</a></li>
      <li><a href='<%= screen_path( id: Question.find_by( name: 'will_use_calendar' ).screen.seq ) %>'>Calendars</a></li>
      <li><a href=''>Make Lists</a></li>
      <li><a href=''>Remember to Check your Calendar</a></li>
      <li><a href='<%= screen_path( id: Question.find_by( name: 'will_use_writing_on_hand' ).screen.seq ) %>'>Write reminders on your hand</a></li>
      <li><a href=''>Leave yourself a message on your voicemail or email yourself</a></li>
      <li><a href=''>Can’t miss reminders</a></li>
      <li><a href='<%= screen_path( id: Question.find_by( name: 'will_use_linking' ).screen.seq ) %>'>Linking Tasks</a></li>
      <li><a href='<%= screen_path( id: Question.find_by( name: 'will_use_automatic_places' ).screen.seq ) %>'>Automatic Places</a></li>
      <li><a href=''>Listen actively</a></li>
      <li><a href=''>Eliminate distractions</a></li>
      <li><a href=''>Ask questions</a></li>
      <li><a href=''>Paraphrase</a></li>
      <li><a href=''>Self-Talk</a></li>
      <li><a href=''>Take a break when you need to refocus</a></li>
      <li><a href=''>Write things down</a></li>
      <li><a href=''>Make associations</a></li>
      <li><a href=''>Categorize information</a></li>
      <li><a href=''>Acronyms</a></li>
      <li><a href=''>Face-Name Strategy</a></li>
      <li><a href=''>More strategies for remembering names</a></li>
      <li><a href=''>Take good care of yourself</a></li>
      <li><a href=''>Get organized!</a></li>
      <li><a href=''>Automatic places</a></li>
      <li><a href=''>stick to a structured schedule</a></li>
      <li><a href=''>The 6-Step Problem-Solving Method (D-BESTE Method)</a></li>
      <li><a href=''>Self-talk and Self-Monitoring</a></li>
      <li><a href=''>Planning to meet goals and deadlines</a></li>
    </ul>

    END

  end
end



