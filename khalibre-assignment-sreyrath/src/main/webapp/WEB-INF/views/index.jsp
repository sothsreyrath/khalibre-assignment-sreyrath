<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


{"total_count": ${repo.total_count},
 "incomplete_results": ${repo.incomplete_results},
 "items" : [
 	<c:forEach items="${repo.items}" var="tag" varStatus="LoopTagStatus">
		{"id": ${tag.id}, "name": "${tag.name}", "full_name" : "${tag.full_name}"
		 ,"owner" : {
		 	"login" : "${tag.owner.login}", "id" : ${tag.owner.id}, "avatar_url" : "${tag.owner.avatar_url}", "gravatar_id" : "${tag.owner.gravatar_id}", "url" : "${tag.owner.url}"
		 	,"html_url" : "${tag.owner.html_url}", "followers_url" : "${tag.owner.followers_url}", "following_url" : "${tag.owner.following_url}", "gists_url" : "${tag.owner.gists_url}", "starred_url" : "${tag.owner.starred_url}"
		 	,"subscriptions_url" : "${tag.owner.subscriptions_url}", "organizations_url" : "${tag.owner.organizations_url}", "repos_url" : "${tag.owner.repos_url}", "events_url" : "${tag.owner.events_url}", "starred_url" : "${tag.owner.starred_url}"
		 	,"received_events_url" : "${tag.owner.received_events_url}", "type" : "${tag.owner.type}", "site_admin" : ${tag.owner.site_admin}
		 }
		 ,"private": ${tag.private_key},"html_url":"${tag.html_url}","description":"${tag.description}"
		 ,"fork":${tag.fork},"url":"${tag.url}", "forks_url":"${tag.forks_url}", "keys_url":"${tag.keys_url}", "collaborators_url":"${tag.collaborators_url}" 
		 ,"teams_url":"${tag.teams_url}", "hooks_url": "${tag.hooks_url}", "issue_events_url" : "${tag.issue_events_url}","events_url":"${tag.events_url}","assignees_url":"${tag.assignees_url}"
		 ,"branches_url":"${tag.branches_url}", "tags_url": "${tag.tags_url}", "blobs_url" : "${tag.blobs_url}","git_tags_url":"${tag.git_tags_url}","git_refs_url":"${tag.git_refs_url}"
		 ,"trees_url":"${tag.trees_url}", "statuses_url": "${tag.statuses_url}", "languages_url" : "${tag.languages_url}","stargazers_url":"${tag.stargazers_url}","contributors_url":"${tag.contributors_url}"
		 ,"subscribers_url":"${tag.subscribers_url}", "subscription_url": "${tag.subscription_url}", "commits_url" : "${tag.commits_url}","git_commits_url":"${tag.git_commits_url}","comments_url":"${tag.comments_url}"
		 ,"issue_comment_url":"${tag.issue_comment_url}", "contents_url": "${tag.contents_url}", "compare_url" : "${tag.compare_url}","merges_url":"${tag.merges_url}","archive_url":"${tag.archive_url}"
		 ,"downloads_url":"${tag.downloads_url}", "issues_url": "${tag.issues_url}", "pulls_url" : "${tag.pulls_url}","milestones_url":"${tag.milestones_url}","notifications_url":"${tag.notifications_url}"
		 ,"labels_url":"${tag.labels_url}", "releases_url": "${tag.releases_url}", "deployments_url" : "${tag.deployments_url}","created_at":"${tag.created_at}","updated_at":"${tag.updated_at}"
		 ,"pushed_at":"${tag.pushed_at}", "git_url": "${tag.git_url}", "ssh_url" : "${tag.ssh_url}","clone_url":"${tag.clone_url}","svn_url":"${tag.svn_url}"
		 ,"homepage":"${tag.homepage}", "size": ${tag.size}, "stargazers_count" : ${tag.stargazers_count},"watchers_count":${tag.watchers_count},"language":"${tag.language}"
		 ,"has_issues":${tag.has_issues}, "has_downloads": ${tag.has_downloads}, "has_wiki" : ${tag.has_wiki},"has_pages":${tag.has_pages},"forks_count":${tag.forks_count}
		 ,"mirror_url":"${tag.mirror_url}", "open_issues_count": ${tag.open_issues_count}, "forks" : ${tag.forks},"open_issues":${tag.open_issues},"watchers":${tag.watchers}
		 ,"default_branch":"${tag.default_branch}", "score": ${tag.score}
		}
		<c:if test="${not LoopTagStatus.last}">,</c:if>
	</c:forEach>
 ]
}
