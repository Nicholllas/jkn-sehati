<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class MaxImageSize implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
    $maxSize = 5120 * 5120; // 1 MB in bytes
    return $value->getSize() <= $maxSize;
    }


    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'File terupload lebih dari 5MB. Harap upload file kurang atau sama dengan 5MB.';
    }
}
