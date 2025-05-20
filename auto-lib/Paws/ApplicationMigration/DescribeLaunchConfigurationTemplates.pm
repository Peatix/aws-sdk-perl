
package Paws::ApplicationMigration::DescribeLaunchConfigurationTemplates;
  use Moose;
  has LaunchConfigurationTemplateIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'launchConfigurationTemplateIDs');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchConfigurationTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeLaunchConfigurationTemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::DescribeLaunchConfigurationTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeLaunchConfigurationTemplates - Arguments for method DescribeLaunchConfigurationTemplates on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLaunchConfigurationTemplates on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method DescribeLaunchConfigurationTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLaunchConfigurationTemplates.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $DescribeLaunchConfigurationTemplatesResponse =
      $mgn->DescribeLaunchConfigurationTemplates(
      LaunchConfigurationTemplateIDs => [
        'MyLaunchConfigurationTemplateID', ...    # min: 21, max: 21
      ],    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $Items     = $DescribeLaunchConfigurationTemplatesResponse->Items;
    my $NextToken = $DescribeLaunchConfigurationTemplatesResponse->NextToken;

# Returns a L<Paws::ApplicationMigration::DescribeLaunchConfigurationTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/DescribeLaunchConfigurationTemplates>

=head1 ATTRIBUTES


=head2 LaunchConfigurationTemplateIDs => ArrayRef[Str|Undef]

Request to filter Launch Configuration Templates list by Launch
Configuration Template ID.



=head2 MaxResults => Int

Maximum results to be returned in DescribeLaunchConfigurationTemplates.



=head2 NextToken => Str

Next pagination token returned from
DescribeLaunchConfigurationTemplates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLaunchConfigurationTemplates in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

