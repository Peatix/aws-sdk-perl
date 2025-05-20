
package Paws::EFS::DescribeAccountPreferences;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountPreferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-02-01/account-preferences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EFS::DescribeAccountPreferencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeAccountPreferences - Arguments for method DescribeAccountPreferences on L<Paws::EFS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountPreferences on the
L<Amazon Elastic File System|Paws::EFS> service. Use the attributes of this class
as arguments to method DescribeAccountPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountPreferences.

=head1 SYNOPSIS

    my $elasticfilesystem = Paws->service('EFS');
    my $DescribeAccountPreferencesResponse =
      $elasticfilesystem->DescribeAccountPreferences(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeAccountPreferencesResponse->NextToken;
    my $ResourceIdPreference =
      $DescribeAccountPreferencesResponse->ResourceIdPreference;

    # Returns a L<Paws::EFS::DescribeAccountPreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticfilesystem/DescribeAccountPreferences>

=head1 ATTRIBUTES


=head2 MaxResults => Int

(Optional) When retrieving account preferences, you can optionally
specify the C<MaxItems> parameter to limit the number of objects
returned in a response. The default value is 100.



=head2 NextToken => Str

(Optional) You can use C<NextToken> in a subsequent request to fetch
the next page of Amazon Web Services account preferences if the
response payload was paginated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountPreferences in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

