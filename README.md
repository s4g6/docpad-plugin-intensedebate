# IntenseDebate Plugin for [DocPad](http://docpad.org)

## Usage

Call the helper from your document or layout:

```javascript
getIntenseDebateCommentBlock()
```

The helper accepts three optional arguments: `idcomments_post_id`, `idcomments_post_url` and `idcomments_post_title` that work exactly as documented on the IntenseDebate website:

```javascript
getIntenseDebateCommentBlock(document.url, document.url, document.title)
```

## Install

```
docpad install intensedebate
```

## Configure

Add your website's account ID to your DocPad configuration. You can find this by going to your site dashboard in IntenseDebate and looking at the URL: `intensedebate.com/moderate/xxxx`

```
plugins:
	intensedebate:
		accountId: "xxxx"
```

It is recommended to put your site's account ID in an environment variable:

```
accountId: process.env.MY_INTENSEDEBATE_ACCT_ID
```

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2014 [Sean Genabe](https://github.com/s4g6)
