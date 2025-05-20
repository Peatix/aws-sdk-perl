
package Paws::DocDBElastic::GetPendingMaintenanceAction;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPendingMaintenanceAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pending-action/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::GetPendingMaintenanceActionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::GetPendingMaintenanceAction - Arguments for method GetPendingMaintenanceAction on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPendingMaintenanceAction on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method GetPendingMaintenanceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPendingMaintenanceAction.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $GetPendingMaintenanceActionOutput =
      $docdb -elastic->GetPendingMaintenanceAction(
      ResourceArn => 'MyInputString',

      );

    # Results:
    my $ResourcePendingMaintenanceAction =
      $GetPendingMaintenanceActionOutput->ResourcePendingMaintenanceAction;

    # Returns a L<Paws::DocDBElastic::GetPendingMaintenanceActionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/GetPendingMaintenanceAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

Retrieves pending maintenance actions for a specific Amazon Resource
Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPendingMaintenanceAction in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

