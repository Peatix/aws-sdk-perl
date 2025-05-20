
package Paws::Drs::DescribeLaunchConfigurationTemplatesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Drs::LaunchConfigurationTemplate]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeLaunchConfigurationTemplatesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Drs::LaunchConfigurationTemplate>]

List of items returned by DescribeLaunchConfigurationTemplates.


=head2 NextToken => Str

The token of the next Launch Configuration Template to retrieve.


=head2 _request_id => Str


=cut

