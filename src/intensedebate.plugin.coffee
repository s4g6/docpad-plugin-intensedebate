# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class IntenseDebatePlugin extends BasePlugin
		# Plugin name
		name: 'intensedebate'

		templateData:
			getIntenseDebateCommentBlock: (idcomments_post_id, idcomments_post_url, idcomments_post_title) ->
				accountId = @docpad.getConfig().accountId
				return '' unless accountId
				"""
				<script>
				var idcomments_acct=#{JSON.stringify(accountId)};
				var idcomments_post_id
				#{if idcomments_post_id? then '=' + JSON.stringify(idcomments_post_id) else ''}
				;
				var idcomments_post_url
				#{if idcomments_post_url? then '=' + JSON.stringify(idcomments_post_title) else ''}
				;
				var idcomments_post_title
				#{if idcomments_post_title? then '=' + JSON.stringify(idcomments_post_title) else ''}
				;
				</script>
				<span id="IDCommentsPostTitle" style="display:none"></span>
				<script type="text/javascript" src="//www.intensedebate.com/js/genericCommentWrapperV2.js"></script>
				"""

		extendTemplateData: ({templateData}) ->
			for own templateHelperName, templateHelper of @templateData
				templateData[templateHelperName] = templateHelper

			@
