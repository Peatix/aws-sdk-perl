
package Paws::Route53RecoveryReadiness::DeleteCell;
  use Moose;
  has CellName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'cellName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCell');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cells/{cellName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::DeleteCell - Arguments for method DeleteCell on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCell on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method DeleteCell.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCell.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    $route53 -recovery-readiness->DeleteCell(
      CellName => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/DeleteCell>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CellName => Str

The name of the cell.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCell in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

