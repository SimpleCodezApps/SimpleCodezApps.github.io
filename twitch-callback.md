---
layout: single
title: "MyTeamLive"
permalink: /twitch-callback
---
<script>
  // Get the current URL's path, search (query parameters), and hash (fragment)
  const currentPath = window.location.pathname;
  const currentSearch = window.location.search;
  const currentHash = window.location.hash;

  if (currentHash != "") {
    // Construct the new URL
    const newUrl = `myteamlive://${currentPath}${currentHash}`;
    window.location.replace(newUrl);
  } else {
    // Construct the new URL
    const newUrl = `myteamlive://${currentPath}${currentSearch}`;
    window.location.replace(newUrl);
  }
</script>
