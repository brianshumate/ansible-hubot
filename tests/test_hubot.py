def test_hubot_running_and_enabled(Service):
    hubot = Service("hubot")
    assert hubot.is_running
    assert hubot.is_enabled
