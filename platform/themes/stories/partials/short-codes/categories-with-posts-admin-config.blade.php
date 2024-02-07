@for ($i = 1; $i <= 3; $i++)
    <div class="mb-3">
        <label class="form-label">{{ __('Category') }} {{ $i }}</label>
        <select class="form-select"
                name="category_id_{{ $i }}">
            <option value="">{{ __('-- select --') }}</option>
            @foreach($categories as $category)
                <option value="{{ $category->id }}" @if ($category->id == Arr::get($attributes, 'category_id_' . $i)) selected @endif>{{ $category->name }}</option>
            @endforeach
        </select>
    </div>
@endfor
