<div class="m_header">
    <div class="m_container">
        <div class="pullLeft">
            <a href="{{ url('/') }}">
                <img class="logo" src="{{ $_system_config->m_site_logo }}" alt="">
            </a>
        </div>
        <div class="pullRight m_header-info">
            @if (Auth::guard('member')->guest())
            @else
                <div>{{ $_member->name }}</div>
                <div>{{ $_member->money }}&nbsp;RMB</div>
            @endif
        </div>
    </div>
</div>