'use strict'

Meteor.methods
  chkEmailVerify:(userId,emailToVerify) ->
    Accounts.sendVerificationEmail(userId,emailToVerify)
  # verifyEmail: (emailToVerify) ->
  #   Accounts.sendVerificationEmail(userId,emailToVerify)