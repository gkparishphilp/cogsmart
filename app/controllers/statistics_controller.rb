class StatisticsController < ApplicationController
  layout 'admin'

  before_action :authenticate_user!

  def index
    unless current_user.is_admin?
      set_flash "unauthorized"
      redirect_to root_path
      return false
    end
    @prompts_ids = Prompt.where("prompt_type = 'radio'").select(:question_id).distinct
    @response_ids = Response.find_by_sql "select question_id, content from responses where question_id in (select distinct(question_id) from prompts where prompt_type = 'radio')"
    @hashmap = create_hash_map
  end

  def create_hash_map()
    res = Hash.new
    res.store(905, 'Will you try making a home for your stuff?')
    res.store(906, 'Will you try using a calendar regularly?')
    res.store(908, 'Will you try the linking tasks strategy?')
    res.store(909, 'Is the automatic places strategy something you’ll try?')
    res.store(911, 'Will you try setting an alarm, linking tasks, or automatic places to remember to check your calendar?')
    res.store(912, 'Are to do lists something you’re willing to try?')
    res.store(914, 'Short-term prospective memory strategie - Write things down on your hand. Will you try writing on your hand?')
    res.store(915, 'Will you try leaving yourself a message or sending yourself an email or text?')
    res.store(916, 'Will you try using an alarm or smart device reminder?')
    res.store(917, 'Is talking to yourself about the consequences of forgetting something you’ll try?')
    res.store(918, 'Are can’t miss reminders something you’ll try?')
    res.store(923, 'Will you try using the LEAP strategies to improve your attention during conversations?')
    res.store(925, 'Are you willing to try self-talk during tasks?')
    res.store(927, 'Are you willing to take breaks as a way of improving your task attention?')
    # res.store(29, 'Are these steps in the correct order? - Watering the yard')
    # res.store(30, 'Are these steps in the correct order? - Going to work in the morning')
    # res.store(31, 'Are these steps in the correct order? - Cleaning the windows')
    # res.store(32, 'Are these steps in the correct order? - Toasting bread')
    # res.store(33, 'Are these steps in the correct order? - Getting a haircut')
    # res.store(34, 'Are these steps in the correct order? - Buying a new car ')
    # res.store(35, 'Are these steps in the correct order? - Making cereal')
    # res.store(36, 'Are these steps in the correct order? - Going on a road trip')
    # res.store(37, 'Are these steps in the correct order? - Washing your car')
    # res.store(38, 'Are these steps in the correct order? - Hanging a picture')
    # res.store(39, 'Are these steps in the correct order? - Going to get coffee')
    # res.store(40, 'Are these steps in the correct order? - Washing your face')
    # res.store(41, 'Are these steps in the correct order? - Ironing a shirt')
    # res.store(42, 'Are these steps in the correct order? - Washing Clothes')
    # res.store(43, 'Are these steps in the correct order? - Drying Clothes')
    # res.store(44, 'Are these steps in the correct order? - Making tea')
    # res.store(45, 'Are these steps in the correct order? - Washing your hair')
    # res.store(46, 'Are these steps in the correct order? - Changing a light bulb')
    # res.store(47, 'Are these steps in the correct order? - Making a pizza')
    # res.store(48, 'Are these steps in the correct order? - Going to the zoo')
    # res.store(49, 'Are these steps in the correct order? - Baking cookies')
    # res.store(50, 'Are these steps in the correct order? - Calling information')
    # res.store(51, 'Are these steps in the correct order? - Mowing the lawn')
    # res.store(52, 'Are these steps in the correct order? - Filling a prescription')
    # res.store(53, 'Are these steps in the correct order? - Buying new shoes')
    res.store(957, 'Are you willing to write things down as a way of improving your memory')
    res.store(958, 'Are you willing to try paraphrasing as a way of improving your memory?')
    res.store(959, 'Are you willing to try association as a way of improving your memory?')
    res.store(962, 'Are you willing to try chunking and categorizing as a way of improving your memory?')
    res.store(963, 'Are you willing to try acronyms as a way of improving your memory?')
    res.store(964, 'Are you willing to try rhymes as a way of improving your memory?')
    res.store(965, 'Are you willing to use visual imagery as a way of improving your memory?')
    res.store(974, 'Are you willing to use these name learning strategies?')
    res.store(980, 'Are you willing to use the overlearning strategy?')
    res.store(983, 'Are you willing to use the brainstorming strategy?')
    #res.store(84, 'puzzle2?')
    res.store(986, 'will_use_self_talk_for_problem_solving')
    #res.store(86, 'puzzle3?')
    #res.store(87, 'puzzle4?')
    #res.store(88, 'puzzle5?')
    #res.store(89, 'puzzle6?')
    res.store(991, 'Are you willing to use the hypothesis testing strategy for problem-solving?')
    res.store(1002, 'Are you willing to use the planning strategy?')

    return res
  end
end
