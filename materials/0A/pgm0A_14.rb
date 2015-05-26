class A < Exception
end

def f
  raise A
end

def g
  begin
    f
  rescue A
    # ...
  end
end
