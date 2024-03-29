@for ($i = 1; $i < 5; $i++)
    <div class="mb-3">
        <label class="form-label">{{ __('Ad :number', ['number' => $i]) }}</label>
        <select name="key_{{ $i }}" class="form-select">
            <option value="">{{ __('-- select --') }}</option>
            @foreach($ads as $ad)
                <option value="{{ $ad->key }}" @if ($ad->key == Arr::get($attributes, 'key_' . $i)) selected @endif>{{ $ad->name }}</option>
            @endforeach
        </select>
    </div>
@endfor
