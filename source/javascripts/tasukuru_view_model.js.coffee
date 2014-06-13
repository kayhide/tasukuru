class TasukuruViewModel
  constructor: ->
    @priority = ko.observable('3')
    @severity = ko.observable('3')
    @what = ko.observable('')
    @why = ko.observable('')
    @who = ko.observable('')
    @how = ko.observable('')
    @when = ko.observable('')
    @howmuch = ko.observable('')
    @output = ko.computed =>
      @update_output()

  priority_marks: ->
    ('☆' for i in [1..@priority()]).join('')

  severity_marks: ->
    ('〇' for i in [1..@severity()]).join('')

  update_output: -> """
    * 優先度: #{@priority_marks()}
    * 重要度: #{@severity_marks()}
    * 何を: #{@what()}
    * なぜ: #{@why()}
    * 誰が: #{@who()}
    * どのように: #{@how()}
    * いつまで: #{@when()}
    * いくらで: #{@howmuch()}
    """

@TasukuruViewModel = TasukuruViewModel
