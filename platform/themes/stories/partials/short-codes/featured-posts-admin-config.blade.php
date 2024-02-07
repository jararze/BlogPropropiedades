<div class="mb-3">
    <label class="form-label">{{ __('Title') }}</label>
    <input name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" />
</div>

<div class="mb-3">
    <label class="form-label">{{ __('Limit') }}</label>
    {!! Form::input('text', 'limit', Arr::get($attributes, 'limit', 8), ['class' => 'form-control']) !!}
</div>
