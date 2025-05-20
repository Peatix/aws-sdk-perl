
package Paws::Route53RecoveryReadiness::CreateCell;
  use Moose;
  has CellName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cellName', required => 1);
  has Cells => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cells');
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCell');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cells');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::CreateCellResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::CreateCell - Arguments for method CreateCell on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCell on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method CreateCell.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCell.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $CreateCellResponse = $route53 -recovery-readiness->CreateCell(
      CellName => 'My__string',
      Cells    => [ 'My__string', ... ],                # OPTIONAL
      Tags     => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $CellArn               = $CreateCellResponse->CellArn;
    my $CellName              = $CreateCellResponse->CellName;
    my $Cells                 = $CreateCellResponse->Cells;
    my $ParentReadinessScopes = $CreateCellResponse->ParentReadinessScopes;
    my $Tags                  = $CreateCellResponse->Tags;

    # Returns a L<Paws::Route53RecoveryReadiness::CreateCellResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/CreateCell>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CellName => Str

The name of the cell to create.



=head2 Cells => ArrayRef[Str|Undef]

A list of cell Amazon Resource Names (ARNs) contained within this cell,
for use in nested cells. For example, Availability Zones within
specific Amazon Web Services Regions.



=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCell in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

