local docx = require 'docx'

describe('Docx', function()
  it('get_filename', function()
    local name = doc.get_filename('./test/test.docx') 
    assert.are.equal(name, 'test.docx')
  end) 

  it('get_filename', function()
    local name = doc.get_filename('./test/File Cover - Copy.docx') 
    assert.are.equal(name, 'File Cover - Copy.docx')
  end) 

  it('get_filename', function()
    local name = doc.get_filename('./test/20170418 Template fields.docx') 
    assert.are.equal(name, '20170418 Template fields.docx')
  end) 

  it('get_filename', function()
    local name = doc.get_filename('./test/20170418_Template_fields.docx') 
    assert.are.equal(name, '20170418_Template_fields.docx')
  end) 

  it('file_exists', function()
    local file = doc.file_exists('/tmp/no-exists')
    assert.are.equal(file, false)
  end)

  it('file_exists', function()
    local file = doc.file_exists(nil)
    assert.are.equal(file, false)
  end)

  it('file_exists', function()
    local file = doc.file_exists('./test/test.docx')
    assert.are.equal(file, true)
  end)
end)