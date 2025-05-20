
package Paws::RedshiftServerless::GetRecoveryPoint;
  use Moose;
  has RecoveryPointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryPointId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecoveryPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetRecoveryPointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetRecoveryPoint - Arguments for method GetRecoveryPoint on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecoveryPoint on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetRecoveryPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecoveryPoint.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetRecoveryPointResponse = $redshift -serverless->GetRecoveryPoint(
      RecoveryPointId => 'MyString',

    );

    # Results:
    my $RecoveryPoint = $GetRecoveryPointResponse->RecoveryPoint;

    # Returns a L<Paws::RedshiftServerless::GetRecoveryPointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetRecoveryPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecoveryPointId => Str

The unique identifier of the recovery point to return information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecoveryPoint in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

