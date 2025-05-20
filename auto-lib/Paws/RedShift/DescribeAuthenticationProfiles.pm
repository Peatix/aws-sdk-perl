
package Paws::RedShift::DescribeAuthenticationProfiles;
  use Moose;
  has AuthenticationProfileName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAuthenticationProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DescribeAuthenticationProfilesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAuthenticationProfilesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeAuthenticationProfiles - Arguments for method DescribeAuthenticationProfiles on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAuthenticationProfiles on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeAuthenticationProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAuthenticationProfiles.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DescribeAuthenticationProfilesResult =
      $redshift->DescribeAuthenticationProfiles(
      AuthenticationProfileName =>
        'MyAuthenticationProfileNameString',    # OPTIONAL
      );

    # Results:
    my $AuthenticationProfiles =
      $DescribeAuthenticationProfilesResult->AuthenticationProfiles;

    # Returns a L<Paws::RedShift::DescribeAuthenticationProfilesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeAuthenticationProfiles>

=head1 ATTRIBUTES


=head2 AuthenticationProfileName => Str

The name of the authentication profile to describe. If not specified
then all authentication profiles owned by the account are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAuthenticationProfiles in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

