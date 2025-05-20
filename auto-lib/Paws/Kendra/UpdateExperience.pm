
package Paws::Kendra::UpdateExperience;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::ExperienceConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExperience');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateExperience - Arguments for method UpdateExperience on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExperience on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExperience.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateExperience(
      Id            => 'MyExperienceId',
      IndexId       => 'MyIndexId',
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
      Description => 'MyDescription',       # OPTIONAL
      Name        => 'MyExperienceName',    # OPTIONAL
      RoleArn     => 'MyRoleArn',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateExperience>

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Kendra::ExperienceConfiguration>

Configuration information you want to update for your Amazon Kendra
experience.



=head2 Description => Str

A new description for your Amazon Kendra experience.



=head2 B<REQUIRED> Id => Str

The identifier of your Amazon Kendra experience you want to update.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for your Amazon Kendra experience.



=head2 Name => Str

A new name for your Amazon Kendra experience.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
the C<Query> API, C<QuerySuggestions> API, C<SubmitFeedback> API, and
IAM Identity Center that stores your users and groups information. For
more information, see IAM roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExperience in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

