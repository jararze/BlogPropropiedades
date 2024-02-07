<div class="mb-3">
    <label class="form-label">{{ __('Select a category') }}</label>
    <select name="category_id" class="form-select">
        @foreach($categories as $category)
            <option value="{{ $category->id }}" @if ($category->id == Arr::get($attributes, 'category_id')) selected @endif>{{ $category->name }}</option>
        @endforeach
    </select>
</div>
