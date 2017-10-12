class ChangeTypeOfBodyOfNotices < ActiveRecord::Migration[5.1]
  def up
    change_column :notices, :body, :text
  end
  def down
    raise '다운그레이드는 지원되지 않습니다'
  end
end