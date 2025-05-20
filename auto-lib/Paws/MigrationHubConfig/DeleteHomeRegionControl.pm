
package Paws::MigrationHubConfig::DeleteHomeRegionControl;
  use Moose;
  has ControlId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHomeRegionControl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubConfig::DeleteHomeRegionControlResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::DeleteHomeRegionControl - Arguments for method DeleteHomeRegionControl on L<Paws::MigrationHubConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHomeRegionControl on the
L<AWS Migration Hub Config|Paws::MigrationHubConfig> service. Use the attributes of this class
as arguments to method DeleteHomeRegionControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHomeRegionControl.

=head1 SYNOPSIS

    my $migrationhub-config = Paws->service('MigrationHubConfig');
    my $DeleteHomeRegionControlResult =
      $migrationhub -config->DeleteHomeRegionControl(
      ControlId => 'MyControlId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-config/DeleteHomeRegionControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlId => Str

A unique identifier that's generated for each home region control. It's
always a string that begins with "hrc-" followed by 12 lowercase
letters and numbers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHomeRegionControl in L<Paws::MigrationHubConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

