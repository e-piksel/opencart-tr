<?php echo $header; ?>
<div id="content" class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="panel panel-default">
    <div class="panel-heading">
      <div class="pull-right">
        <button type="submit" form="form-attribute-group" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $button_save; ?></button>
        <a href="<?php echo $cancel; ?>" class="btn btn-danger"><i class="fa fa-times"></i> <?php echo $button_cancel; ?></a></div>
      <h1 class="panel-title"><i class="fa fa-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="panel-body">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-attribute-group" class="form-horizontal">
        <div class="form-group required">
          <label class="col-sm-2 control-label"><?php echo $entry_name; ?></label>
          <div class="col-sm-10">
            <?php foreach ($languages as $language) { ?>
            <div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
              <input type="text" name="attribute_group_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($attribute_group_description[$language['language_id']]) ? $attribute_group_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" class="form-control" />
            </div>
            <?php if (isset($error_name[$language['language_id']])) { ?>
            <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
            <?php } ?>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
          <div class="col-sm-10">
            <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>