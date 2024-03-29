<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" />
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Subtitle') }}</label>
    <input name="subtitle" value="{{ Arr::get($attributes, 'subtitle') }}" class="form-control" />
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Text Muted') }}</label>
    <input name="text_muted" value="{{ Arr::get($attributes, 'text_muted') }}" class="form-control" />
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Newsletter Title') }}</label>
    <input name="newsletter_title" value="{{ Arr::get($attributes, 'newsletter_title') }}" class="form-control" />
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Image') }}</label>
    {!! Form::mediaImage('image', Arr::get($attributes, 'image')) !!}
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Show newsletter form') }}</label>
    {!! Form::customSelect('show_newsletter_form', ['yes' => __('Yes'), 'no' => __('No')], Arr::get($attributes, 'show_newsletter_form')) !!}
</div>
