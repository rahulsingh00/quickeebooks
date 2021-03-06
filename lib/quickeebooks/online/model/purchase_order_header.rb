require 'time'

module Quickeebooks
  module Online
    module Model
      class PurchaseOrderHeader < Quickeebooks::Online::Model::IntuitType

        IS_TAXABLE = "IS_TAXABLE"

        xml_name 'Header'
        xml_accessor :doc_number, :from => 'DocNumber'
        xml_accessor :txn_date, :from => 'TxnDate', :as => Time
        xml_accessor :msg, :from => 'Msg'
        xml_accessor :note, :from => 'Note'
        xml_accessor :status, :from => 'Status'
        xml_accessor :vendor_id, :from => 'VendorId', :as => Quickeebooks::Online::Model::Id
        xml_accessor :vendor_name, :from => 'VendorName'
        xml_accessor :class_id, :from => 'ClassId', :as => Quickeebooks::Online::Model::Id
        xml_accessor :total_amount, :from => 'TotalAmt', :as => Float
        xml_accessor :to_be_emailed, :from => 'ToBeEmailed'
        xml_accessor :to_be_printed, :from => 'ToBePrinted'
        xml_accessor :sales_term_id, :from => 'SalesTermId', :as => Quickeebooks::Online::Model::Id
        xml_accessor :due_date, :from => 'DueDate', :as => Time
        xml_accessor :shipping_address, :from => 'ShipAddr', :as => Quickeebooks::Online::Model::Address
        xml_accessor :bill_email, :from => 'BillEmail'
        xml_accessor :ship_method_id, :from => 'ShipMethodId', :as => Quickeebooks::Online::Model::Id
        xml_accessor :ship_method_name, :from => 'ShipMethodName'
        xml_accessor :balance, :from => 'Balance', :as => Float
        
      end
    end
  end

end
