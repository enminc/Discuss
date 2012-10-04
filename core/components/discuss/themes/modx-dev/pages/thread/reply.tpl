<!-- reply -->
[[!FormIt?
  &submitVar=`dis-post-reply`
  &hooks=`postHook.DiscussReplyPost`
  &validate=`title:required,message:required:allowTags`
]]
<div class="f1-f9">
    <form action="[[~[[*id]]]]thread/reply?post=[[+id]]" method="post" class="dis-form dis-thread-form" id="dis-reply-post-form" enctype="multipart/form-data">
    	<h1>[[!+fi.title]]</h1>
        <input type="hidden" name="board"  value="[[!+fi.board]]" />
        <input type="hidden" name="thread" value="[[!+fi.thread]]" />
        <input type="hidden" name="post"   value="[[!+fi.post]]" />
        <input type="hidden" name="title"  value="[[!+fi.title]]" id="dis-reply-post-title" />

        <div class="wysi-buttons">
            [[+reply_buttons]]
        </div>

        <textarea name="message" id="dis-thread-message">[[+!fi.message]]</textarea>
        <span class="error">[[!+fi.error.message]]</span>

        <div class="l-left">[[+attachment_fields]]</div>
        <div class="dis-form-buttons l-right">
            [[+locked_cb]]
            [[+sticky_cb]]
            <label class="dis-cb"><input type="checkbox" name="notify" value="1" />[[%discuss.subscribe_by_email]]</label>
            <input class="cancel" type="button" value="[[%discuss.cancel]]" onclick="location.href='[[+url]]';" />
            <input type="submit" name="dis-post-reply" value="[[%discuss.post_reply]]" />
        </div>
        [[+discuss.error_panel]]
    </form>

    <div class="dis-thread-posts">
        <ul class="dis-list h-group">
            <li><h1>[[%discuss.thread_summary]]</h1></li>
            [[+thread_posts]]
        </ul>
    </div>
</div><!-- Close Content From Wrapper -->

[[+bottom]]

[[$post-sidebar?disection=`new-message`]]

<!-- close thread/reply.tpl -->
