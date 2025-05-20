
package Paws::RedshiftServerless::GetTableRestoreStatus;
  use Moose;
  has TableRestoreRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableRestoreRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTableRestoreStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetTableRestoreStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetTableRestoreStatus - Arguments for method GetTableRestoreStatus on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTableRestoreStatus on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetTableRestoreStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTableRestoreStatus.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetTableRestoreStatusResponse =
      $redshift -serverless->GetTableRestoreStatus(
      TableRestoreRequestId => 'MyString',

      );

    # Results:
    my $TableRestoreStatus = $GetTableRestoreStatusResponse->TableRestoreStatus;

  # Returns a L<Paws::RedshiftServerless::GetTableRestoreStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetTableRestoreStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableRestoreRequestId => Str

The ID of the C<RestoreTableFromSnapshot> request to return status for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTableRestoreStatus in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

