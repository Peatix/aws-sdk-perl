
package Paws::Kendra::CreateExperience;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::ExperienceConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExperience');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateExperienceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateExperience - Arguments for method CreateExperience on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExperience on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExperience.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateExperienceResponse = $kendra->CreateExperience(
      IndexId       => 'MyIndexId',
      Name          => 'MyExperienceName',
      ClientToken   => 'MyClientTokenName',    # OPTIONAL
      Configuration => {
        ContentSourceConfiguration => {
          DataSourceIds => [
            'MyDataSourceId', ...    # min: 1, max: 100
          ],    # min: 1, max: 100; OPTIONAL
          DirectPutContent => 1,    # OPTIONAL
          FaqIds           => [
            'MyFaqId', ...          # min: 1, max: 100
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        UserIdentityConfiguration => {
          IdentityAttributeName =>
            'MyIdentityAttributeName',    # min: 1, max: 1000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      RoleArn     => 'MyRoleArn',        # OPTIONAL
    );

    # Results:
    my $Id = $CreateExperienceResponse->Id;

    # Returns a L<Paws::Kendra::CreateExperienceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateExperience>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create your Amazon
Kendra experience. Multiple calls to the C<CreateExperience> API with
the same client token creates only one Amazon Kendra experience.



=head2 Configuration => L<Paws::Kendra::ExperienceConfiguration>

Configuration information for your Amazon Kendra experience. This
includes C<ContentSourceConfiguration>, which specifies the data source
IDs and/or FAQ IDs, and C<UserIdentityConfiguration>, which specifies
the user or group information to grant access to your Amazon Kendra
experience.



=head2 Description => Str

A description for your Amazon Kendra experience.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for your Amazon Kendra experience.



=head2 B<REQUIRED> Name => Str

A name for your Amazon Kendra experience.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
C<Query> API, C<GetQuerySuggestions> API, and other required APIs. The
role also must include permission to access IAM Identity Center that
stores your user and group information. For more information, see IAM
access roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExperience in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

