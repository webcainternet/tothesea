<div class="borderBox"><div id="banner<?php echo $module; ?>" class="banner row<?php foreach ($banners as $banner) { ?> <?php echo $banner['title']; ?><?php } ?>">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div class="span4"><a href="<?php echo $banner['link']; ?>"><span class="imgBox"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></span><div class="s-desc"><?php echo $banner['description']; ?></div></a></div>
  <?php } else { ?>
  <div class="span4"><span class="imgBox"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></span><div class="s-desc"><?php echo $banner['description']; ?></div></div>
  <?php } ?>
  <?php } ?>
</div></div>