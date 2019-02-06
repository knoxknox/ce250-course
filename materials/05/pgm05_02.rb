# 02
class Module

  def abstractmethod(symbol)
    module_eval <<-"end_eval"
      def #{symbol.id2name}(*args)
        raise MethodNotImplementedError
      end
    end_eval
  end

end
