
u = User.create( name: 'joe', email: 'joe@joe.edu', password: '1234' )

u = User.create( name: 'beth', email: 'etwamley@ucsd.edu', password: 'c0gsm@rt' )

r = Role.create name: 'admin'
u.roles << r

# cct manuals
Resource.create name: 'Compensatory Cognitive Training Manual Client Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Compensatory+Cognitive+Training+Manual+Client+Version+October+2011.pdf', require_email: true
Resource.create name: 'Compensatory Cognitive Training Manual Therapist Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Compensatory+Cognitive+Training+Manual+Therapist+Version+October+2011.pdf', require_email: true
Resource.create name: 'Spanish Compensatory Cognitive Training Manual Client Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Spanish+Compensatory+Cognitive+Training+Manual+Client+Version+September+2012.pdf', language: 'Spanish', require_email: true
Resource.create name: 'Spanish Compensatory Cognitive Training Manual Therapist Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/Spanish+Compensatory+Cognitive+Training+Manual+Therapist+Version+September+2012.pdf', language: 'Spanish', require_email: true

Resource.create name: 'Portugese Compensatory Cognitive Training Manual Client Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/CCT+client+Portuguese.pdf'
Resource.create name: 'Portugese Compensatory Cognitive Training Manual Therapist Version', category: 'cct', path: 'https://s3.amazonaws.com/cogsmart/CCT+therapist+Portuguese.pdf'


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











