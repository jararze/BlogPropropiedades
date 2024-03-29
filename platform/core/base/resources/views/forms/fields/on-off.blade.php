@php
    $options['attr']['label'] = $options['label'];
    $isShowLabel = $showLabel && $options['label'] && $options['label_show'];

    if (!$isShowLabel) {
        unset($options['attr']['label']);
    }

    $options['label'] = false;

    Arr::set($options['attr'], 'class', str_replace('form-control', '', $options['attr']['class']));
@endphp

<x-core::form.field
    :showLabel="$showLabel"
    :showField="$showField"
    :options="$options"
    :name="$name"
    :prepend="$prepend ?? null"
    :append="$append ?? null"
    :showError="$showError"
    :nameKey="$nameKey"
>
    {!! Form::onOff($name, $options['value'], $options['attr']) !!}
</x-core::form.field>
