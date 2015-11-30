'user strict'
Meteor.methods
  resetPasswordAdmin: (userId, newPassword)->
    console.log(userId, newPassword)
    Accounts.setPassword(userId,newPassword)