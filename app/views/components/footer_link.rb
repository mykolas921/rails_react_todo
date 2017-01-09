module Components
  class FooterLink < React::Component::Base

    param :current_filter, type: Symbol
    param :filter, type: Symbol

    before_mount do
      # any initialization particularly of state variables goes here.
      # this will execute on server (prerendering) and client.
    end

    after_mount do
      # any client only post rendering initialization goes here.
      # i.e. start timers, HTTP requests, and low level jquery operations etc.
    end

    before_update do
      # called whenever a component will be re-rerendered
    end

    before_unmount do
      # cleanup any thing (i.e. timers) before component is destroyed
    end

    def render
     a(class: (params.filter == params.current_filter ? :selected : '')) do
       params.filter.camelcase
     end.on(:click) { Index.filter! params.filter }
   end

  end
end
