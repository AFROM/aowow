var _ = g_gatheredcurrencies;
{strip}
{foreach from=$data key=id item=item}
    _[{$id}]={ldelim}
        name_{$user.language}:'{$item.name|escape:"javascript"}',
        icon:{$item.icon|@json_encode}
    {rdelim};
{/foreach}
{/strip}
